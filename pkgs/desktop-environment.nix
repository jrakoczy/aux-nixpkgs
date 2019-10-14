{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "desktop-environment";
  buildInputs = with pkgs; [
    i3-gaps
    mpv
  ];

  sha256 = "0a3wlrs7vy9p78n2srr971kgidi4w6xdx8a58780dy8hkvsry4r8";
  rev = "c8a6b929e4f99a8fe4498481df64215cfacf72b9";

  description = "A local machine user's environment.";
}
