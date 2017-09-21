{ pkgs ? import <nixpkgs> {} }:

with pkgs;
rec {
  envutils = callPackage ./pkgs/envutils.nix { };
  desktop-environment = callPackage ./pkgs/desktop-environment.nix { inherit envutils; };
  pywal = callPackage ./pkgs/pywal.nix { };
  remote-environment = callPackage ./pkgs/remote-environment.nix { inherit envutils; };
}
