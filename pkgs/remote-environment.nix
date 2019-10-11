{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "remote-environment";
  buildInputs = with pkgs; [

  ];

  sha256 = "0gq2g8ngcba2y8kza24rvaxra0xzwnng6p78myr6x0z6i7vyvnwn";
  rev = "8d5b96fcf967f9caa4b7022023f4a5d6fa8d67df";

  description = "A remote machine user's environment.";
}
