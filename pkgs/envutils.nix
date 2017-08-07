{ pkgs, stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  name = "envutils";

  src = fetchFromGitHub {
    owner = "jrakoczy";
    repo = "envutils";
    sha256 = "0l6f4iffbw3sdbx53djq12k1hps23rfjs2s1igqg72g5rdg1wds8";
    rev = "ebf57804efbd1ea362c1046e9a1c868dc4f6d2c5";
  };

  phases = [ "unpackPhase" "installPhase" ];

  installPhase = ''
    target="$out"/bin
    mkdir -p "$target"
    find . -type f -exec install -m 755 {} "$target" \;
  '';

  meta = {
    description = "Convenience scripts to manipulate env config files.";
    longDescription = ''
      The scripts allow to conveniently load to user's home directory, test
      and clean up configuration files (mainly dot-files) stored in the
      Nix store.

      envload — load config files from the Nix store to user's home dir.
      envtest — conveniently sym-link any file to user's home dir.
      envdel - delete the previously loaded environment.
    '';
    license = stdenv.lib.licenses.gpl3Plus;
  };
}
