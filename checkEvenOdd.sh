#!/bin/bash

read -p "Please enter a number: " number

function isEvenOrOdd(){

  while true; do
    if [[ -n ${number} ]]; then
      echo "Number is even"
      break
    else 
      echo "please enter a number"
    fi
  done
}

isEvenOrOdd "${number}"
