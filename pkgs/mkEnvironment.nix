{ stdenv, name, buildInputs, sha256, rev, description }:

stdenv.mkDerivation {
  inherit name buildInputs;

  src = fetchFromGitHub {
    owner = "jrakoczy";
    repo = "environments";
    inherit sha256 rev;
  };

  phases = [ "unpackPhase" "installPhase" ];

  installPhase = ''
    mkdir $out
    cp -r . $out
    chmod -R 755 $out
  '';

  meta = {
    inherit description;
    license = stdenv.lib.licenses.gpl3Plus;
  };
}
