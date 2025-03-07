#!/bin/bash

PS3="Select a fruit: "

select selectedFruit in Apple Banana Mango; do
  if [[ $1 == "exit" ]]; then
    echo "Good Bye!"
    breakk
  fi
  case $selectedFruit in
  Apple) echo "You Selected $selectedFruit" ;;
  Banana) echo "You Selected $selectedFruit" ;;
  Mango) echo "You Selected $selectedFruit" ;;
  exit | Exit)
    echo "Good Bye!"
    break
    ;;
  *)
    echo "Please select correct fruit."
    ;;
  esac
done
