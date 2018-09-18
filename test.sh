#!/bin/sh

FUNCTIONAL_TEST=functionalTest

function displayMessage() {
  echo --------------------------------------------------
  echo "  ${1}"
  echo --------------------------------------------------
}

function processStatusOfLastCommand() {
  if [ $? -ne 0 ] ; then
    echo "F A I L E D"
    exit 1
  fi
}

function compile() {
  displayMessage " C O M P I L I N G  => ${FUNCTIONAL_TEST}"
  gcc -v -c ${FUNCTIONAL_TEST}.c -L./ -lHelloWorld
  processStatusOfLastCommand
}

function link() {
  displayMessage " L I N K I N G  =>  ${FUNCTIONAL_TEST}"
  gcc -v -o ${FUNCTIONAL_TEST}.exe ${FUNCTIONAL_TEST}.o -L./ -lHelloWorld
  processStatusOfLastCommand
}

function runTest() {
  displayMessage " R U N N I N G  =>  ${FUNCTIONAL_TEST}"
  ./${FUNCTIONAL_TEST}.exe
  processStatusOfLastCommand
}

compile
link
runTest
