{ cabal, cmdargs, filepath, ioStorage }:

cabal.mkDerivation (self: {
  pname = "una";
  version = "2.1.0";
  sha256 = "0gpycwd0dgnw7cdicpn19wv1xb4jq3j9dfzry2ilv85h02zkwfvh";
  isLibrary = false;
  isExecutable = true;
  buildDepends = [ cmdargs filepath ioStorage ];
  meta = {
    homepage = "https://github.com/jwiegley/una";
    description = "Universal un-archiver utility";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
