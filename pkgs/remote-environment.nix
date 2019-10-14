{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ../lib/mkEnvironment.nix {
  inherit stdenv fetchFromGitHub envutils;

  name = "remote-environment";
  buildInputs = with pkgs; [

  ];

  sha256 = "1j30vn67bmzyvqg9k1c5dkh3jxfkm9viq588jm5gxrwlwqf934fh";
  rev = "5c831eb5f440f7d1bbb570cdb0374847152302b7";

  description = "A remote machine user's environment.";
}
