{ pkgs, stdenv, fetchFromGitHub, envutils }:

import ./mkEnvironment.nix {
  inherit stdenv fetchFromGitHub;

  name = "desktop-environment";
  buildInputs = with pkgs; [
    i3-gaps
    mpv
    envutils
  ];

  sha256 = "0r9lgbyy94h50afy94065m9nnk8hwa3dxqp26h53ci64mz44w5ri";
  rev = "e31e033f54927846942bb226787cbb1d0e9806e8";

  description = "A local machine user's environment.";
}
