{ stdenv, name, buildInputs, sha256, rev, description }:

stdenv.mkDerivation {
  inherit name buildInputs;

  src = fetchFromGitHub {
    owner = "jrakoczy";
    repo = changeme;
    inherit sha256 rev;
  };

  phases = [ "unpackPhase", "installPhase" ];

  installPhase = ''

  ''

  meta = {
    inherit description;
    license = stdenv.lib.licenses.gpl3Plus;
  };
}
