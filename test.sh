#!/bin/sh

FUNCTIONAL_TEST=functionalTest

function displayMessage() {
  echo --------------------------------------------------
  echo "  ${1}"
  echo --------------------------------------------------
}

function compile() {
  displayMessage " C O M P I L I N G  => ${FUNCTIONAL_TEST}"
  g++ -v -c ${FUNCTIONAL_TEST}.c -L./ -lHelloWorld
}

function link() {
  displayMessage " L I N K I N G  =>  ${FUNCTIONAL_TEST}"
  g++ -v -o ${FUNCTIONAL_TEST}.exe ${FUNCTIONAL_TEST}.o -L./ -lHelloWorld -lHelloWorld
}

function runTest() {
  displayMessage " R U N N I N G  =>  ${FUNCTIONAL_TEST}"
  ${FUNCTIONAL_TEST}.exe
}

compile
link
# runTest
