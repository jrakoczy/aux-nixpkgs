{ pkgs, stdenv, fetchFromGitHub }:

import ./mkEnvironment.nix {
  inherit stdenv fetchFromGitHub;

  name = "remote-environment";
  buildInputs = with pkgs; [

  ];

  sha256 = "3c8fb3096c0e418abc0c5e049d7d6293";
  rev = "ab8e5d3ff082060a8c42003c16384345fa9e9273";

  description = "A remote machine user's environment.";
}
