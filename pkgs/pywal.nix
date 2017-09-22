{ pkgs, stdenv, fetchFromGitHub }:

pkgs.python35Packages.buildPythonPackage rec {
  name = "pywal";

  src = fetchFromGitHub {
    owner = "jrakoczy";
    repo = "pywal";
    sha256 = "0n3j3ga5d14z58fpifrfm7m5as3q4bhicrkf5hz0fzqh3lzhb1ym";
    rev = "9a34ee610bd864d39de49dc456078c7f335fc005";
  };

  propagatedBuildInputs = with pkgs; [
    feh
    imagemagick
  ];

  meta = {
    description = "Generate and change system colorschemes on the fly.";
    longDescription = "wal is a script that takes an image (or a directory of
      images), generates a colorscheme (using imagemagick) and then changes
      all of your open terminal's colors to the new colorscheme on the fly.
      wal then caches each generated colorscheme so that cycling through
      wallpapers while changing colorschemes is instantaneous.";
    license = stdenv.lib.licenses.mit;
  };
}
