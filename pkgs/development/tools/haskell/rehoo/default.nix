{ cabal, cmdargs, parallelIo, shelly, split, systemFilepath, text
}:

cabal.mkDerivation (self: {
  pname = "rehoo";
  version = "0.3.1";
  sha256 = "0pwmz1q2866yj8hxbvha4v1smhppkd3jsrrhbhmbxw137l54ijgf";
  isLibrary = false;
  isExecutable = true;
  buildDepends = [
    cmdargs parallelIo shelly split systemFilepath text
  ];
  meta = {
    homepage = "https://github.com/jwiegley/rehoo";
    description = "Rebuild default.hoo from many .hoo files in the current directory";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
