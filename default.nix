{ pkgs ? import <nixpkgs> {} }:

with pkgs;
rec {
  envutils = callPackage ./pkgs/envutils.nix { };
  desktop-environment = callPackage ./pkgs/desktop-environment.nix { };
  remote-environment = callPackage ./pkgs/remote-environment.nix { };
}
