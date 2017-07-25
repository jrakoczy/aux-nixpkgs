{ pkgs, stdenv, fetchFromGitHub }:

import ./mkEnvironment.nix {
  inherit stdenv fetchFromGitHub;

  name = "desktop-environment";
  buildInputs = with pkgs; [
    i3-gaps
    mpv
  ];

  sha256 = "d12195d3b04d24ea4095669fe0de3d4c8d089b9c215fa692adc6695ecb59fd9e";
  rev = "159e0a7c62729270f7e1aeb9565873473a2712a2";

  description = "A local machine user's environment.";
}
