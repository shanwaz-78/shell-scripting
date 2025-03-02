#!/bin/bash

read -p "Please Enter Your Name " userName

userName=${userName:-"Guest"}

echo "hello, ${userName}"