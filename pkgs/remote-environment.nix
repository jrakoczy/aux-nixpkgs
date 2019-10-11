{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "remote-environment";
  buildInputs = with pkgs; [

  ];

  sha256 = "1bdbyjnsnkxfs85d7l7b41ncpnhglz6nasg94dzq0ydpnxaqfhiw";
  rev = "8d5b96fcf967f9caa4b7022023f4a5d6fa8d67df";

  description = "A remote machine user's environment.";
}
