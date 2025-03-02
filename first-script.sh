#!/bin/bash

name="kyle simpson"
string="HELLO WORLD!"

echo "${name^}"  
echo "${string,,}" 

echo "${string:2:4}" 
echo "${string//L/S}" 

number=2
echo "$((2 * number))"  

function hello(){
  echo "hello"
}
hello 

if [[ $number -gt 1 ]]; then  
  echo "greater than"
else 
  echo "not greater than"
fi


function add_numbers(){
  local sum=$(($1 + $2))
  if [[ $sum -eq 5 ]]; then
    echo "result is greater then 5"
  else 
    echo "result is not greater than 5"
  fi
  
}

result=$(add_numbers 2 3)
echo "result: $result"