{stdenv, fetchurl, ocaml, findlib, ocaml_pcre, opam_core_108_07_01 }:

stdenv.mkDerivation {
  name = "opam-core_extended-108.07.01";

  src = fetchurl {
    url = "https://ocaml.janestreet.com/ocaml-core/108.07.01/individual/core_extended-108.07.01.tar.gz";
    md5 = "1c5e061360a441f4a8b959ef174f5112";
  };

  propagatedBuildInputs = [ocaml findlib ocaml_pcre opam_core_108_07_01];

  createFindlibDestdir = true;

  meta = {
    platforms = ocaml.meta.platforms;
  };
}
