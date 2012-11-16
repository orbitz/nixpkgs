{stdenv, fetchurl, ocaml, findlib, opam_type_conv_108_07_01 }:

stdenv.mkDerivation {
  name = "opam-comparelib-108.07.01";

  src = fetchurl {
    url = "https://ocaml.janestreet.com/ocaml-core/108.07.01/individual/comparelib-108.07.01.tar.gz";
    md5 = "d83e254b7fa7707c3aa55bb7f9f7fe7c";
  };

  propagatedBuildInputs = [ocaml opam_type_conv_108_07_01 findlib ];

  createFindlibDestdir = true;

  meta = {
    platforms = ocaml.meta.platforms;
  };
}
