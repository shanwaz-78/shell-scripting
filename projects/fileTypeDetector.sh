#!/bin/bash

function checkFileType() {
  local fileExtension="${1,,}" 

  if [[ -z "$fileExtension" ]]; then
    echo "Please provide a file extension."
    return 1
  fi

  case "$fileExtension" in
  "txt") echo "Text File." ;;
  "jpeg" | "jpg") echo "Image File." ;;
  "mp3") echo "Audio File." ;;
  "mp4") echo "Video File." ;;
  *) echo "Invalid file extension or file type." ;;
  esac
}

checkFileType "$1"
