
FLAGS = -use-menhir


OCB = ocamlbuild $(FLAGS)

all : native

native :
	$(OCB) main.native

clean:
	$(OCB) -clean

test : native
	./main.native tests/fact.c
	./main.native tests/fibo.c

