{ pkgs, stdenv, fetchFromGitHub }:

import ./mkEnvironment.nix {
  inherit stdenv fetchFromGitHub;

  name = "remote-environment";
  buildInputs = with pkgs; [

  ];

  sha256 = "0d9q7459r1y9hs3w1gg24ilsjnzry88f4m5npwvxcy8i066nrp54";
  rev = "ab8e5d3ff082060a8c42003c16384345fa9e9273";

  description = "A remote machine user's environment.";
}
