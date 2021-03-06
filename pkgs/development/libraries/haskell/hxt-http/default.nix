{ cabal, HTTP, hxt, network, parsec }:

cabal.mkDerivation (self: {
  pname = "hxt-http";
  version = "9.1.4";
  sha256 = "176k71dc30cnjjr9y9vphs0aixs3ww16197qyc491qjrzhymm2g2";
  buildDepends = [ HTTP hxt network parsec ];
  meta = {
    homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
    description = "Interface to native Haskell HTTP package HTTP";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
