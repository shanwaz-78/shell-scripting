#!/bin/bash

number=1

until [[ $number -gt 10 ]]
do
  echo "echo $((number * 2))"
  ((number++))
done