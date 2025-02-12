#!/bin/bash

function printTable() {
  local tableNumber="$1"

  if [[ -z "$tableNumber" || ! "$tableNumber" =~ ^[0-9]+$ ]]; then
    echo "Please provide a valid number."
    return 1
  fi

  local init=1
  local limit=10

  while [[ $init -le $limit ]]; do
    echo "$tableNumber x $init = $(( tableNumber * init ))"
    ((init++))
  done
}

printTable "$1"
