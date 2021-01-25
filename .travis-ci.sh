# Edit this for your own project dependencies
OPAM_DEPENDS="ocamlfind ounit dune"

sudo apt-get update -qq
sudo apt-get install -qq ocaml opam
export OPAMYES=1
export OPAMVERBOSE=1
echo OCaml version
ocaml -version
echo OPAM versions
opam --version
opam --git-version

opam init 
opam install ${OPAM_DEPENDS}
eval `opam config env`
dune runtest -f
