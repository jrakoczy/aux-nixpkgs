{ pkgs, stdenv, fetchFromGitHub }:

import ./mkEnvironment.nix {
  inherit stdenv fetchFromGitHub;

  name = "desktop-environment";
  buildInputs = with pkgs; [

  ];

  sha256 = changeme;
  rev = changeme;

  description = "A local machine user's environment."
}
