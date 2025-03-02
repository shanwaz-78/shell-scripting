#!/bin/bash

function getNumber() {
  local prompt="$1"
  local var
  while true; do
    read -p "$prompt: " var
    if [[ -n "$var" && "$var" =~ ^[0-9]+$ ]]; then
      echo "$var"
      return
    else
      echo "Invalid input! Please enter a valid number."
    fi
  done
}

firstNumber=$(getNumber "Enter first number")
secondNumber=$(getNumber "Enter second number")

function simulateOperation() {
  sum=$((firstNumber + secondNumber))
  echo "The sum of $firstNumber and $secondNumber is: $sum"
}

simulateOperation
