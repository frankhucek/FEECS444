all:
	gcc -g -c -o SO.o StackOverrun.c
	ghc Main.hs SO.o
