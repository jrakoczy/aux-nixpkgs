{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "desktop-environment";
  buildInputs = with pkgs; [
    i3-gaps
    mpv
  ];

  sha256 = "000";
  rev = "80e8af65df0f2b0a4116f0ec660a588da963e17d";

  description = "A local machine user's environment.";
}
