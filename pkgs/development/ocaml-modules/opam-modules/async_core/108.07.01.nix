{stdenv, fetchurl, ocaml, findlib, opam_core_108_07_01 }:

stdenv.mkDerivation {
  name = "opam-async_core-108.07.01";

  src = fetchurl {
    url = "https://ocaml.janestreet.com/ocaml-core/108.07.01/individual/async_core-108.07.01.tar.gz";
    md5 = "6fac99d205e41de0206cbd8862325302";
  };

  propagatedBuildInputs = [ocaml findlib opam_core_108_07_01];

  propagatedUserEnvPackages = [ocaml findlib opam_core_108_07_01];

  createFindlibDestdir = true;

  meta = {
    platforms = ocaml.meta.platforms;
  };
}
