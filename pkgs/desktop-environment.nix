{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ./mkEnvironment.nix {
  inherit stdenv fetchFromGitHub;

  name = "desktop-environment";
  buildInputs = with pkgs; [
    i3-gaps
    mpv
    envutils
  ];

  sha256 = "0lv2xlmxgbw2d21fwyi2vg4qs5hq456av2lj4qz6k01libfyi3qp";
  rev = "159e0a7c62729270f7e1aeb9565873473a2712a2";

  description = "A local machine user's environment.";
}
