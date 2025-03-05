#!/bin/bash

function validateDayNumber() {
    local dayNumber="$1"

    if [[ -z "$dayNumber" ]]; then
        echo "Error: No day number provided."
        return 1
    fi

    if ! [[ "$dayNumber" =~ ^[1-7]$ ]]; then
        echo "Error: Please provide a valid day number (1-7)."
        return 1
    fi
}

function findDayName() {
    local dayNumber="$1"

    validateDayNumber "$dayNumber" || return 1

    case "$dayNumber" in
        1) echo "Monday" ;;
        2) echo "Tuesday" ;;
        3) echo "Wednesday" ;;
        4) echo "Thursday" ;;
        5) echo "Friday" ;;
        6) echo "Saturday" ;;
        7) echo "Sunday" ;;
    esac
}

findDayName "$1"
