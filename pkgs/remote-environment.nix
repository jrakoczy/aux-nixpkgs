{ pkgs, stdenv, fetchFromGitHub }:

import ./mkEnvironment.nix {
  inherit stdenv fetchFromGitHub;

  name = "remote-environment";
  buildInputs = with pkgs; [

  ];

  sha256 = "ea34ddae9035fd64ef63fdc61a3baf48424be97127f4406f2dd7bbe41cebbb26";
  rev = "ab8e5d3ff082060a8c42003c16384345fa9e9273";

  description = "A remote machine user's environment.";
}
