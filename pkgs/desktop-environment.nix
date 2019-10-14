{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "desktop-environment";
  buildInputs = with pkgs; [
    i3-gaps
    mpv
  ];

  sha256 = "1nm0pk2yhi863y91l8dybw5j139kxa8dnr9q1ysfi6pbj94hrh51";
  rev = "c8a6b929e4f99a8fe4498481df64215cfacf72b9";

  description = "A local machine user's environment.";
}
