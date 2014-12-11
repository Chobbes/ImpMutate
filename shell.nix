{ pkgs ? (import <nixpkgs> {})
, haskellPackages ? pkgs.haskellPackages_ghc783
}:

haskellPackages.cabal.mkDerivation (self: {
  pname = "ImpMutate";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  buildDepends = with haskellPackages; [ attoparsec text ];
  buildTools = with haskellPackages; [ cabalInstall ];
  meta = {
    description = "Blah.";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
