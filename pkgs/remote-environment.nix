{ pkgs, stdenv, fetchFromGitHub }:

import ./mkEnvironment.nix {
  inherit stdenv, fetchFromGitHub;

  name = "remote-environment";
  buildInputs = with pkgs; [

  ];

  sha256 = changeme;
  rev = changeme;

  description = ''
    An environment that may be conveniently restored on remote machines.
    Contains all packaged customized via configuration files (mainly dot-files).
    The files are stored in the Nix store and may be loaded into user's environment via scripts,
    in a handy manner.
  '';
}
