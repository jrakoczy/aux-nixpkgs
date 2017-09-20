{ pkgs, stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  name = "envutils";

  src = fetchFromGitHub {
    owner = "jrakoczy";
    repo = "envutils";
    sha256 = "09gpqp8wgbhvnrq7pv9i9wnj2carnnca308z32az64c60d4csg9p";
    rev = "b10d306df16b179077cdd512a890eb3aacb98908";
  };

  phases = [ "unpackPhase" "installPhase" ];

  installPhase = ''
    target="$out/bin"
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
