#!/bin/bash

function digitalWatch() {
  while true
  do
      clear
      echo "$(date +%T)"
      sleep 1           
  done
}

digitalWatch