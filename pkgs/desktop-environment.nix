{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "desktop-environment";
  buildInputs = with pkgs; [
    i3-gaps
    mpv
  ];

  sha256 = "14v4dswk4lzb60fgl2xqi8vf3ivcl4wm3lf2czr6z69s786n32vw";
  rev = "bd9a0102baf598f7303b43f48fb3f1282ad7f56b";

  description = "A local machine user's environment.";
}
