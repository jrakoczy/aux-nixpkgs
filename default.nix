{ pkgs ? <nixpkgs> }:

let
  stdenv = pkgs.stdenv;
  callPackage = pkgs.lib.callPackage;
in
{
  desktop-environment = callPackage ./pkgs/desktop-environment.nix { };
  remote-environment = callPackage ./pkgs/remote-environment.nix { };
}
