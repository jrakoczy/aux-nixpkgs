{ pkgs, stdenv, fetchFromGitHub }:

import ./mkEnvironment.nix {
  inherit stdenv fetchFromGitHub;

  name = "desktop-environment";
  buildInputs = with pkgs; [

  ];

  sha256 = "402e9ce4815330d6c731b937315d986e";
  rev = "159e0a7c62729270f7e1aeb9565873473a2712a2";

  description = "A local machine user's environment."
}
