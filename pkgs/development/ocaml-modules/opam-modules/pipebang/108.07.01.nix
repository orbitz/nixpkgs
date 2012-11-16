{stdenv, fetchurl, ocaml, findlib, opam_type_conv_108_07_01 }:

stdenv.mkDerivation {
  name = "opam-pipebang-108.07.01";

  src = fetchurl {
    url = "https://ocaml.janestreet.com/ocaml-core/108.07.01/individual/pipebang-108.07.01.tar.gz";
    md5 = "f9dd027f9386f492e25505598ec3c9ca";
  };

  propagatedBuildInputs = [ocaml opam_type_conv_108_07_01 findlib ];

  createFindlibDestdir = true;

  meta = {
    platforms = ocaml.meta.platforms;
  };
}
