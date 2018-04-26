#!/bin/sh

# Create directories.
mkdir -p bin
mkdir -p include
mkdir -p obj
mkdir -p src

# Create a cpp file with the same name as the current directory name in the src directory.
touch ./src/$(basename `readlink -f .`).cpp

# Change the access permissions. (read, write and execute)
chmod 777 ./bin ./include ./obj ./src
chmod 777 ./src/$(basename `readlink -f .`).cpp