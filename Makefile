
FLAGS = -use-menhir

OCB = ocamlbuild $(FLAGS)

all : native

native :
	$(OCB) mmlc.native

clean:
	$(OCB) -clean

test : native
	./mmlc.native test.c
