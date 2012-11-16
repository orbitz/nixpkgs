{stdenv, fetchurl, ocaml, findlib, opam_type_conv_108_07_01 }:

stdenv.mkDerivation {
  name = "opam-pa_ounit-108.07.01";

  src = fetchurl {
    url = "https://ocaml.janestreet.com/ocaml-core/108.07.01/individual/pa_ounit-108.07.01.tar.gz";
    md5 = "b8c567cef070d7d5bf2645735d43c72d";
  };

  propagatedBuildInputs = [ocaml opam_type_conv_108_07_01 findlib ];

  createFindlibDestdir = true;

  meta = {
    platforms = ocaml.meta.platforms;
  };
}
