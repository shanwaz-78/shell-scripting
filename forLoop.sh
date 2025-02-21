#!/bin/bash

function forLoop() {
  local number="$1"

  if [[ -z "$number" || ! "$number" =~ ^[0-9]+$ ]]; then
    echo "Please provide a valid number."
    return 1
  fi

  for ((i = 1; i <= 10; i++)); do
    echo "$number x $i = $((number * i))"
  done
}

forLoop "$1"
