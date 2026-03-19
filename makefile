fibonnaci: Objects/main.o
	gcc Objects/main.o -o fibonnaci

Objects/main.o: Src/main.c
	gcc -c Src/main.c -o Objects/main.o