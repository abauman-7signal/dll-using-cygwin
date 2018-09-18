#!/bin/sh

function compile() {
  echo ---------------------
  echo   C O M P I L I N G
  echo ---------------------
  gcc -v -c HelloWorld.cpp
}

function link() {
  echo -----------------
  echo   L I N K I N G
  echo -----------------
  gcc -v -shared -o HelloWorld.dll HelloWorld.o
}


compile
link
