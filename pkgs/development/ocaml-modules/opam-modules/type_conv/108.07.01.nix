{stdenv, fetchurl, ocaml, findlib}:

# note: works only with ocaml >3.12

stdenv.mkDerivation {
  name = "opam-type_conv-108.07.01";

  src = fetchurl {
    url = "https://ocaml.janestreet.com/ocaml-core/108.07.01/individual/type_conv-108.07.01.tar.gz";
    md5 = "2b61b7106943841ce2bc77c174fb532c";
  };

  propagatedBuildInputs = [ocaml findlib ];

  createFindlibDestdir = true;

  meta = {
    description = "Support library for OCaml preprocessor type conversions";
    license = "LGPL";
    platforms = ocaml.meta.platforms;
  };
}
