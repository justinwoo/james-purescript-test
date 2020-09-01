{ pkgs ? import <nixpkgs> {} }:

{
  "console" = {
    name = "console";
    version = "v4.4.0";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-console.git";
      rev = "v4.4.0";
      sha256 = "1w9k2g242lvyv4npb5rqfbdq1ngh7s7v12zarxn8yxgq15palh3m";
    };
  };
  "effect" = {
    name = "effect";
    version = "v2.0.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-effect.git";
      rev = "v2.0.1";
      sha256 = "1vqw5wrdxzh1ww6z7271xr4kg4mx0r3k3mwg18dmgmzj11wbn2wh";
    };
  };
  "prelude" = {
    name = "prelude";
    version = "v4.1.1";
    src = pkgs.fetchgit {
      url = "https://github.com/purescript/purescript-prelude.git";
      rev = "v4.1.1";
      sha256 = "1frvjrv0mr508r6683l1mp5rzm1y2dz76fz40zf4k2c64sy6y1xm";
    };
  };
}
