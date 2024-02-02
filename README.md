# README

Playing with cmake and make on Windows. For learning how to setup cmake and make visit: [msys2](https://www.msys2.org/docs/cmake/)

## Reminder

- **.c** files contain the implementation of the code.
- **.h** files exist to provide interfaces that allow a file to access functions, global variables, and macros from other files.

## Compilation

```powershell
g++ main.cpp helpers.cpp -o main.exe
./main.exe
```

Alternatively

```powershell
g++ -c main.cpp helpers.cpp
g++ main.o helpers.o -o main.exe
./main.exe
```

## Build system

### Simple <span style="color:orange">**Makefile**</span> example

```make
all: main

main: main.o helpers.o
	g++ -o main.exe main.o helpers.o

main.o: main.cpp
	g++ -c main.cpp

helpers.o: helpers.cpp
	g++ -c helpers.cpp
```

Then you can run `make` command and finally run `./main.exe`

## Build system generator

Cmake is a build system generator and a scripting language used to generate make files.

### Simple <span style="color:orange">**CMakeLists.txt**</span> example

```cmake
cmake_minimum_required(VERSION 3.10)

# set the project name
project(main)

# add executable
add_executable(main main.cpp helpers.cpp)
```

For this instance I will use Windows and as the generator I will use mingw-make

```powershell
cd build
cmake .. -G "MinGW Makefiles"
make
./main.exe
```
