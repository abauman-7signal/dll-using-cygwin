#!/bin/sh

MODULE=HelloWorld

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
  displayMessage "C O M P I L I N G  => ${MODULE}"
  gcc -v -c ${MODULE}.cpp
  processStatusOfLastCommand
}

function link() {
  displayMessage "L I N K I N G  =>  ${MODULE}"
  gcc -v -shared -o ${MODULE}.dll ${MODULE}.o
  processStatusOfLastCommand
}


compile
link
displayMessage "S U C C E S S !!!!"
