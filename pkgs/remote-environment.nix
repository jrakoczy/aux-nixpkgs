{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "remote-environment";
  buildInputs = with pkgs; [

  ];

  sha256 = "0gq2g8ngcba2y8kza24rvaxra0xzwnng6p78myr6x0z6i7vyvnwn";
  rev = "5c831eb5f440f7d1bbb570cdb0374847152302b7";

  description = "A remote machine user's environment.";
}
