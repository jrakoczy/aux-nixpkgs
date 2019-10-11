{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "desktop-environment";
  buildInputs = with pkgs; [
    i3-gaps
    mpv
  ];

  sha256 = "0phf5vwfq1dc25x43a49pr7wyz9pciq45a8cbn0cajzx979h69jn";
  rev = "cad4b7135a463ae3062acce504a212f551b47a7e";

  description = "A local machine user's environment.";
}
