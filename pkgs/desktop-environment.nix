{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "desktop-environment";
  buildInputs = with pkgs; [
    i3-gaps
    mpv
  ];

  sha256 = "0g75k8acjmc5687410q7grfy5drjn9n177zmx2i39vwcc8w3ls9p";
  rev = "eaa6349e096adfd00fdbe372f0733b8e9377a238";

  description = "A local machine user's environment.";
}
