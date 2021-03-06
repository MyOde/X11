# {ghc}:
with (import <nixpkgs> {});

haskell.lib.buildStackProject {
  inherit ghc;
  name = "elder-melder-env";
  buildInputs =
              [
                xorg.libXrandr
                xorg.libXScrnSaver
                xorg.libXext
                xorg.libX11
		autoconf
		haskellPackages.process_1_6_4_0
		haskellPackages.data-default

                # xorg.libXcomposite
              ];
  # nativeBuildInputs = [ xorg.libXcomposite ];
  # unpackPhase = ''
  #   echo "BUILDING ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
  # '';
}
