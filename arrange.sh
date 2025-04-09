#!/bin/bash

F="./files"

for file in "$F"/*
do
  filename=$(basename "$file")
  first=${filename:0:1}
  check=$(echo "$first" | tr '[:upper:]' '[:lower:]')

  if [[ "$check" =~ ^[a-z]$ ]]
  then
    mv "$file" "./$check/"
  fi
done
