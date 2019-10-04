{ pkgs, stdenv, fetchFromGitHub }:

pkgs.python37Packages.buildPythonPackage rec {
  name = "pywal";

  src = fetchFromGitHub {
    owner = "jrakoczy";
    repo = "pywal";
    sha256 = "1wwv7nk33rlhpx161ha4b9bcv788227krkpaarl2j7mzni24wl8x";
    rev = "9ca6fc39e99d4f18a6fb8ac0654bcd678b725114";
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
