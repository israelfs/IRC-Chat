# Este novo makefile ainda precisa de muitas alterações
.PHONY : client server all srun crun clean

all: client server

client:	lib/Client.hpp
	g++ -g -c Cliente.cpp
	g++ -g -o ClientSide Cliente.o -Wall -Werror
	rm Cliente.o

server: lib/Server.hpp
	g++ -g -c Servidor.cpp
	g++ -g -o ServerSide Servidor.o -Wall -Werror
	rm Servidor.o

srun:
	./ServerSide

crun:
	./ClientSide

clean:
	rm ServerSide
	rm ClientSide

zip: clean
	zip -r TrabalhoFinalRedes.zip Makefile lib/* src/*