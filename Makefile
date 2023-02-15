all: main

main: main.o helpers.o
	g++ -o main.exe main.o helpers.o

main.o: main.cpp
	g++ -c main.cpp

helpers.o: helpers.cpp
	g++ -c helpers.cpp
