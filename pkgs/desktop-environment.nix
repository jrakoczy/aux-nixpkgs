{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "desktop-environment";
  buildInputs = with pkgs; [
    i3-gaps
    mpv
  ];

  sha256 = "0phf5vwfq1dc25x43a49pr7wyz9pciq45a8cbn0cajzx979h69jn";
  rev = "8356727b4633b74e40cdf9b3833ae4211f514ecc";

  description = "A local machine user's environment.";
}
