#!/bin/bash

function findLargestNumber() {
  local numbers=(1 2 3 4 5)
  local largestNumber=${numbers[0]}  

  for (( i=1; i<${#numbers[@]}; i++ )); do
    if (( numbers[i] > largestNumber )); then
      largestNumber=${numbers[i]}
    fi
  done

  echo "The largest number is: $largestNumber"
}

findLargestNumber
