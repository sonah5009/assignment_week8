#!/bin/bash
shopt -s extglob
dataBase=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")
cd "files"
for ((i=0;i<${#dataBase[@]};i++))
do
  data=($(ls | grep -i "^${dataBase[i]}"))
  for ((j=0;j<${#data[@]};j++))
  do
    first_char=$(echo "${data[j]:0:1}")
    mv "./${data[j]}" "../${first_char}/"
  done
done