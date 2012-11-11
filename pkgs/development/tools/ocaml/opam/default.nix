{ stdenv, fetchgit, ocaml, ncurses, curl }:

stdenv.mkDerivation rec {
  name = "opam-git-20121111";

  buildInputs = [ncurses curl ocaml];

  src = fetchgit {
    url = "https://github.com/OCamlPro/opam.git";
    rev = "6e86353faf4ccd80024f44e0baa74954592048f2";
    sha256 = "6c1dfc605eaf1161ab6452e29aeffd5d9153344be1fe0073b5eddf338a90fb94";
  };

  doCheck = false;

  meta = {
    description = "A package manager for ocaml";
    platforms = stdenv.lib.platforms.all;
  };
}
