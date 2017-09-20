{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "desktop-environment";
  buildInputs = with pkgs; [
    i3-gaps
    mpv
  ];

  sha256 = "1jh3qs3av6k97kl839ah9cz6nakaw3nsjnjpw6ynb5ppq8pz6d42";
  rev = "20b01cf60f3677183faac454abe4fba7406bc342";

  description = "A local machine user's environment.";
}
