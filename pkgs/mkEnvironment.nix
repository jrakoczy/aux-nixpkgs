{

  stdenv,
  fetchFromGitHub,
  name,
  buildInputs,
  sha256,
  rev,
  description

}:

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
    longDescription = ''
	  Contains all packages customized via configuration files (mainly
	  dot-files). The files are stored in the Nix store and may be loaded
	  into user's environment with use of envutils tools, in a handy manner
	'';
    license = stdenv.lib.licenses.gpl3Plus;
  };
}
