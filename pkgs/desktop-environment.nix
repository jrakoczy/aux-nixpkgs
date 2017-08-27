{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "desktop-environment";
  buildInputs = with pkgs; [
    i3-gaps
    mpv
  ];

  sha256 = "0zwwr9bffb2xf5fp06l8gg1frfh3j6svyam3339a6gi3iqfx7jbk";
  rev = "5ef93be7473d381f3ddf5b9f3767c52c651db1a4";

  description = "A local machine user's environment.";
}
