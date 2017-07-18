{ stdenv, pkgs }:

import ./mkEnvironment.nix {
  inherit stdenv;

  name = "desktop-environment";
  buildInputs = with pkgs; [

  ];

  sha256 = changeme;
  rev = changeme;

  description = ''
    A desktop environment that contains all packages customized via configuration files.
    The files are stored in the Nix store and may be loaded into user's environment via scripts,
    in a handy manner.
  '';
}
