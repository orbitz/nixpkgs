{ stdenv, fetchgit, fetchurl, ocaml, ncurses, curl }:

let
  srcs = {
    cudf = fetchurl {
      url = "http://gforge.info.ucl.ac.be/frs/download.php/190/cudf-0.6.3.tar.gz";
      sha256 = "6e9f1bafe859df85c854679e2904a8172945d2bf2d676c8ae3ecb72fe6de0665";
    };
    extlib = fetchurl {
      url = "http://ocaml-extlib.googlecode.com/files/extlib-1.5.3.tar.gz";
      sha256 = "c095eef4202a8614ff1474d4c08c50c32d6ca82d1015387785cf03d5913ec021";
    };
    ocaml_re = fetchurl {
      url = "http://www.ocamlpro.com/pub/ocaml-re.1.1.tar.gz";
      sha256 = "590f8a23131d782682c8cd851aa9067968a6eebf904bd95ae2107b63bafa8294";
    };
    ocamlgraph = fetchurl {
      url = "http://ocamlgraph.lri.fr/download/ocamlgraph-1.8.1.tar.gz";
      sha256 = "ba6388ffc2c15139b0f26330ef6dd922f0ff0f364eee99a3202bf1cd93512b43";
    };
    dose3 = fetchurl {
      url = "https://gforge.inria.fr/frs/download.php/31595/dose3-3.1.2.tar.gz";
      sha256 = "3a07a08345be157c98cb26021d7329c72c2b95c99cfdff79887690656ec9f1a3";
    };
    ocaml_arg = fetchurl {
      url = "http://www.ocamlpro.com/pub/ocaml-arg.0.3.tar.gz";
      sha256 = "6c6d17331bb7a2760a5ed3924361db68f00b899b836cd09ba3488c556f30a74a";
    };
    opam = fetchgit {
      url = "https://github.com/OCamlPro/opam.git";
      rev = "6e86353faf4ccd80024f44e0baa74954592048f2";
      sha256 = "6c1dfc605eaf1161ab6452e29aeffd5d9153344be1fe0073b5eddf338a90fb94";
    };
  };
in
stdenv.mkDerivation rec {
  name = "opam-git-20121111";

  buildInputs = [ncurses curl ocaml];

  src = srcs.opam;

  postUnpack = ''
  ln -sv ${srcs.cudf} $sourceRoot/src_ext/${srcs.cudf.name}
  ln -sv ${srcs.extlib} $sourceRoot/src_ext/${srcs.extlib.name}
  ln -sv ${srcs.ocaml_re} $sourceRoot/src_ext/${srcs.ocaml_re.name}
  ln -sv ${srcs.ocamlgraph} $sourceRoot/src_ext/${srcs.ocamlgraph.name}
  ln -sv ${srcs.dose3} $sourceRoot/src_ext/${srcs.dose3.name}
  ln -sv ${srcs.ocaml_arg} $sourceRoot/src_ext/${srcs.ocaml_arg.name}
  '';

  makeFlags = ["HOME=$(TMPDIR)"];

  doCheck = false;

  meta = {
    description = "A package manager for ocaml";
    platforms = stdenv.lib.platforms.all;
  };
}
