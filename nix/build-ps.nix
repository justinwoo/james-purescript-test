{ pkgs ? import <nixpkgs> { } }:
let
  easy-ps = import ./easy-ps.nix { inherit pkgs; };
  pursPackages = import ./purs-packages.nix { inherit pkgs; };

  # remember, purs takes quoted globs
  getQuotedSourceGlob = x: ''"${x.src}/src/**/*.purs"'';
  sourceGlobs = map getQuotedSourceGlob (builtins.attrValues pursPackages);
  sourceGlobsString = toString sourceGlobs;

  pursPackagesOutput = pkgs.runCommand "test-psc-package-nix-output"
    {
      buildInputs = [ easy-ps.purs ];
    } ''
    mkdir $out
    cd $out
    purs compile ${sourceGlobsString}
  '';

  projectSources = ''"${../src}/**/*.purs"'';
  projectOutput = pkgs.runCommand "test-psc-package-nix-output-project"
    {
      buildInputs = [ easy-ps.purs ];
    } ''
    mkdir $out
    cd $out
    cp -R --no-preserve=mode ${pursPackagesOutput}/output .
    purs compile ${sourceGlobsString} ${projectSources}
  '';
in
{
  inherit
    sourceGlobsString
    projectSources
    pursPackagesOutput
    projectOutput;
}
