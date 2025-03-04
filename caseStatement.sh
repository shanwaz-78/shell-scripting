#!/bin/bash

function checkWord(){
  local workingStatus=${1,,}

  case ${workingStatus} in 
      working)
        echo "Working on machine"
      ;;
      onLeave)
         echo "on leave for today"
      ;;
      halfDay)
         echo  "Having half day"
      ;;
      *)
      echo "Not Specified"
  esac
}

checkWord WORKING