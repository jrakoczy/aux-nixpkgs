{ pkgs, stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  name = "envutils";

  src = fetchFromGitHub {
    owner = "jrakoczy";
    repo = "envutils";
    sha256 = "1q1g1zfpcxag1nsq9hbv9hgmgb161qlqdva8fliicjnjak86ijlz";
    rev = "f4295f9953793daa1ef318e3ddf7f4550c8636cb";
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
