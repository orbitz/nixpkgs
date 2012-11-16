{stdenv, fetchurl, ocaml, findlib, opam_type_conv_108_07_01 }:

stdenv.mkDerivation {
  name = "opam-sexplib-108.07.01";

  src = fetchurl {
    url = "https://ocaml.janestreet.com/ocaml-core/108.07.01/individual/sexplib-108.07.01.tar.gz";
    md5 = "af1d316979cfe4f1527ed938bc39336b";
  };

  propagatedBuildInputs = [ocaml opam_type_conv_108_07_01 findlib ];

  createFindlibDestdir = true;

  meta = {
    platforms = ocaml.meta.platforms;
  };
}
