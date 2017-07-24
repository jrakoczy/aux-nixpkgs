{ pkgs, stdenv, fetchFromGitHub }:

import ./mkEnvironment.nix {
  inherit stdenv, fetchFromGitHub;

  name = "remote-environment";
  buildInputs = with pkgs; [

  ];

  sha256 = changeme;
  rev = changeme;

  description = "A remote machine user's environment.";
}
