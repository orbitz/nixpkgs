{stdenv, fetchurl, ocaml,
 findlib, opam_type_conv_108_07_01, opam_bin_prot_108_07_01,
 opam_fieldslib_108_07_01, opam_pa_ounit_108_07_01, opam_pipebang_108_07_01,
 opam_sexplib_108_07_01, opam_variantslib_108_07_01, opam_res,
 ounit, opam_comparelib_108_07_01 }:

stdenv.mkDerivation {
  name = "opam-core-108.07.01";

  src = fetchurl {
    url = "https://ocaml.janestreet.com/ocaml-core/108.07.01/individual/core-108.07.01.tar.gz";
    md5 = "98cc925a06502cab67669294fb557714";
  };

  propagatedBuildInputs = [ocaml findlib opam_type_conv_108_07_01 opam_bin_prot_108_07_01 opam_fieldslib_108_07_01 opam_pa_ounit_108_07_01 opam_pipebang_108_07_01 opam_sexplib_108_07_01 opam_variantslib_108_07_01 opam_res ounit opam_comparelib_108_07_01];

  createFindlibDestdir = true;

  meta = {
    platforms = ocaml.meta.platforms;
  };
}
