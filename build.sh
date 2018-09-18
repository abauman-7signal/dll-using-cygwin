#!/bin/sh

MODULE=HelloWorld

function processStatusOfLastCommand() {
  if [ $? -ne 0 ] ; then
    echo "F A I L E D"
    exit 1
  fi
}

function compile() {
  echo ---------------------
  echo   C O M P I L I N G
  echo ---------------------
  gcc -v -c ${MODULE}.cpp
  processStatusOfLastCommand
}

function link() {
  echo -----------------
  echo   L I N K I N G
  echo -----------------
  gcc -v -shared -o ${MODULE}.dll ${MODULE}.o
  processStatusOfLastCommand
}


compile
link
