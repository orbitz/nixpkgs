{stdenv, fetchurl, ocaml, findlib, opam_async_core_108_07_01, opam_async_unix_108_07_01, opam_async_extra_108_07_01 }:

stdenv.mkDerivation {
  name = "opam-async-108.07.01";

  src = fetchurl {
    url = "https://ocaml.janestreet.com/ocaml-core/108.07.01/individual/async-108.07.01.tar.gz";
    md5 = "f2b85b8a497d16c32b221aa984f425fe";
  };

  patches = [ ./setup.patch ];

  propagatedBuildInputs = [ocaml findlib opam_async_core_108_07_01 opam_async_unix_108_07_01 opam_async_extra_108_07_01];

  propagatedUserEnvPackages = [ocaml findlib opam_async_core_108_07_01 opam_async_unix_108_07_01 opam_async_extra_108_07_01];

  createFindlibDestdir = true;

  meta = {
    platforms = ocaml.meta.platforms;
  };
}
