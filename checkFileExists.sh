#!/bin/bash

function isFileExists(){
  local fileName="$1"
  read -p "${fileName}" systemFileName

  if [ -e "${systemFileName}" ]
  then  
      echo "file exists"
  else
    echo "file not exists"
  fi
}

isFileExists "Enter file name: "
