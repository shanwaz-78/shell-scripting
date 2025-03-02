#!/bin/bash

function printNumbers() {
  local startNumber="$1"
  local endNumber="$2"

  if (( startNumber < endNumber )); then
    for (( i=startNumber; i<=endNumber; i++ )); do
      echo "Output: $i"
    done
  else
    for (( i=startNumber; i>=endNumber; i-- )); do
      echo "Output: $i"
    done
  fi
}

function countDown() {
  local userInput="$1"
  local number

  while true; do
    read -p "$userInput: " number
    if [[ -n "$number" && "$number" =~ ^[0-9]+$ ]]; then
      printNumbers 1 "$number"
      break
    else
      echo "Please enter a valid number."
    fi
  done
}

countDown "Enter a number"
