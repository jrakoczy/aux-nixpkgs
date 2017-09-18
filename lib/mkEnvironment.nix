{

  stdenv,
  fetchFromGitHub,
  name,
  buildInputs,
  envutils,
  sha256,
  rev,
  description

}:

stdenv.mkDerivation {
  inherit name;

  buildInputs = buildInputs ++ [ envutils ];
  nativeBuildInputs = [ nix ];

  src = fetchFromGitHub {
    owner = "jrakoczy";
    repo = "environments";
    inherit sha256 rev;
  };

  phases = [ "unpackPhase" "installPhase" ];

  installPhase = ''
    mkdir -p "$out/bin"
    cp -r . $out

    # We need to hack this a little bit as I didn't find any other way to
    # expose buildInputs executables.
    envutils_bin='${envutils.outPath}/bin'
    cp -s "$envutils_bin/envdel" "$envutils_bin/envtest" "$out/bin"
    printf "#!/usr/bin/env sh\n envload ${name}" > "$out/bin/envload"

    chmod -R 755 "$out"
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
