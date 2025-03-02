#!/bin/bash

read -p "Please enter a number: " number

function isEvenOrOdd(){
  if (( $1 % 2 == 0 )); then
      echo "Number is even"
  else 
      echo "Number is odd"
  fi
}

isEvenOrOdd "${number}"
