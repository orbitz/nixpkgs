{stdenv, fetchurl, ocaml, findlib, opam_type_conv_108_07_01 }:

stdenv.mkDerivation {
  name = "opam-bin_prot-108.07.01";

  src = fetchurl {
    url = "https://ocaml.janestreet.com/ocaml-core/108.07.01/individual/bin_prot-108.07.01.tar.gz";
    md5 = "4b16a1d296c3f6599d50ed32553d5b5d";
  };

  propagatedBuildInputs = [ocaml opam_type_conv_108_07_01 findlib ];

  createFindlibDestdir = true;

  meta = {
    platforms = ocaml.meta.platforms;
  };
}
