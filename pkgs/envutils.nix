{ pkgs, stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  name = "envutils";

  src = fetchFromGitHub {
    owner = "jrakoczy";
    repo = "envutils";
    sha256 = "0vs99qxfgyaa4vhk5y8mmvbybq92jv1z91vax2r7sjykclygx2zr";
    rev = "80d16ed47865d588f5db6d33767bc0bcc7f2023d";
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
