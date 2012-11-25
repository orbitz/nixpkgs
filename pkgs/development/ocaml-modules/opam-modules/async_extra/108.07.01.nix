{stdenv, fetchurl, ocaml, findlib, opam_async_core_108_07_01, opam_async_unix_108_07_01 }:

stdenv.mkDerivation {
  name = "opam-async_extra-108.07.01";

  src = fetchurl {
    url = "https://ocaml.janestreet.com/ocaml-core/108.07.01/individual/async_extra-108.07.01.tar.gz";
    md5 = "94106a48edcb32acb9d3161682aa3a39";
  };

  propagatedBuildInputs = [ocaml findlib opam_async_core_108_07_01 opam_async_unix_108_07_01];

  propagatedUserEnvPackages = [ocaml findlib opam_async_core_108_07_01 opam_async_unix_108_07_01];

  createFindlibDestdir = true;

  meta = {
    platforms = ocaml.meta.platforms;
  };
}
