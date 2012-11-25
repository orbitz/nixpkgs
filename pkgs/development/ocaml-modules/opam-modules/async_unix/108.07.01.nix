{stdenv, fetchurl, ocaml, findlib, opam_async_core_108_07_01 }:

stdenv.mkDerivation {
  name = "opam-async_unix-108.07.01";

  src = fetchurl {
    url = "https://ocaml.janestreet.com/ocaml-core/108.07.01/individual/async_unix-108.07.01.tar.gz";
    md5 = "128c46c2b0dadfc9145b481b9119d0ed";
  };

  propagatedBuildInputs = [ocaml findlib opam_async_core_108_07_01];

  propagatedUserEnvPackages = [ocaml findlib opam_async_core_108_07_01];

  createFindlibDestdir = true;

  meta = {
    platforms = ocaml.meta.platforms;
  };
}
