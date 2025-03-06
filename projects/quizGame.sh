#!/bin/bash

response=$(curl -s -H "Accept:application/json" "https://opentdb.com/api.php?amount=10")
quizIndex=0  

function getNewQuiz() {
  local quizIndex="$1"
  echo "$response" | jq -r ".results[$quizIndex]"
}

function showQuiz(){
  local quiz=$(getNewQuiz $quizIndex)  
  local question=$(echo "$quiz" | jq -r '.question')
  local correct_answer=$(echo "$quiz" | jq -r '.correct_answer')
  local incorrect_answers=$(echo "$quiz" | jq -r '.incorrect_answers[]')

  echo "Question: $question"
  
  options=("$correct_answer")
  while read -r ans; do
    options+=("$ans")
  done <<< "$incorrect_answers"

  shuffled=($(shuf -e "${options[@]}"))

  for i in "${!shuffled[@]}"; do
    echo "$(($i + 1)). ${shuffled[$i]}"
  done

  read -p "Enter the correct option number: " user_choice

  if [[ "${shuffled[$((user_choice-1))]}" == "$correct_answer" ]]; then
    echo "Correct!"
  else
    echo "Incorrect! The correct answer was: $correct_answer"
  fi
}

showQuiz
