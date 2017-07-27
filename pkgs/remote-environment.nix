{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ./mkEnvironment.nix {
  inherit stdenv fetchFromGitHub;

  name = "remote-environment";
  buildInputs = with pkgs; [
    envutils
  ];

  sha256 = "1bdbyjnsnkxfs85d7l7b41ncpnhglz6nasg94dzq0ydpnxaqfhiw";
  rev = "026d0b70960ea31516c18b482cc8a2be016225f7";

  description = "A remote machine user's environment.";
}
