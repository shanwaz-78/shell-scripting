#!/bin/bash

function multiplicationTable() {
  local number
  read -p "Enter a number: " number  

  local result=()

  for (( i=1; i<=number; i++ )); do
    result+=("$((number * i))")
  done
  
  echo "Multiplication table for $number: ${result[*]}"  
}

multiplicationTable  