{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "desktop-environment";
  buildInputs = with pkgs; [
    i3-gaps
    mpv
  ];

  sha256 = "0fycc3d2v6g8k3jbbg2xg9bv71whjkf43jjfy3dfxvplii0x6qhz";
  rev = "eaa6349e096adfd00fdbe372f0733b8e9377a238";

  description = "A local machine user's environment.";
}
