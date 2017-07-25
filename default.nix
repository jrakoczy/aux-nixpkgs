{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let
  callPackage = lib.callPackage;
in
{
  desktop-environment = callPackage ./pkgs/desktop-environment.nix { };
  remote-environment = callPackage ./pkgs/remote-environment.nix { };
}
