{stdenv, fetchurl, ocaml, findlib }:

stdenv.mkDerivation {
  name = "opam-res-3.2.0";

  src = fetchurl {
    url = "https://bitbucket.org/mmottl/res/downloads/res-3.2.0.tar.gz";
    md5 = "1b69a2abc96aa4c8f5bee1954a9f166c";
  };

  propagatedBuildInputs = [ocaml findlib ];

  createFindlibDestdir = true;

  meta = {
    platforms = ocaml.meta.platforms;
  };
}
