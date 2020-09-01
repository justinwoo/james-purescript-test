{ pkgs ? import <nixpkgs> { } }:
let
  easy-ps = import ./nix/easy-ps.nix { inherit pkgs; };
  ppn = import ./nix/psc-package-nix.nix { inherit pkgs; };

  generatePursPackages = import "${ppn}/nix/generate-purs-packages.nix" {
    inherit pkgs;
    packagesJson = ./packages.json;
    inputNames = (builtins.fromJSON (builtins.readFile ./psc-package.json)).depends;
  };
in
pkgs.mkShell {
  buildInputs = [
    easy-ps.purs
    easy-ps.psc-package
    generatePursPackages
  ];

  shellHook = ''
    # this lets us generate purs-packages.nix
    mk-purs-packages-nix() {
      generate-purs-packages > nix/purs-packages.nix
      echo 'done'
    }
  '';
}
