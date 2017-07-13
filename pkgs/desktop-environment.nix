{ stdenv, pkgs }:

import ./mkEnvironment.nix {
  inherit stdenv;

  name = "desktop-environment";
  buildInputs = with pkgs; [

  ];

  sha256 = changeme;
  rev = changeme;

  description = changeme;
}
