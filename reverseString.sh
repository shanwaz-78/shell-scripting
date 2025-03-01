#!/bin/bash

function reverseString() {
  local string="$1"
  local result=""
  
  for (( i=${#string}-1; i>=0; i-- )); do
    result="${result}${string:i:1}"
  done
  
  echo "$result"
}


reverseString "hello"
