{ pkgs ? import <nixpkgs> { } }:

pkgs.fetchFromGitHub {
  owner = "justinwoo";
  repo = "psc-package-nix";
  rev = "0f1f001e2ea17ad461871a1873050f6aef5f1284";
  sha256 = "0gbwcvw8rvxhlg9p6avd0812y263jzim1sra5frbdi0s6q0ngsgi";
}
