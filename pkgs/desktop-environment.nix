{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "desktop-environment";
  buildInputs = with pkgs; [
    i3-gaps
    mpv
  ];

  sha256 = "0rbzz0gvn87ivjymf7msnm44jmi4hfrsj5yd96329lhy4xrwnvak";
  rev = "04914e8040f33cf337495371e359365622c96634";

  description = "A local machine user's environment.";
}
