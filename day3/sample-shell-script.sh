#!/bin/bash


#sample shel script
echo "my name is naineel"

echo "creating the file to subfolder - echoing"

mkdir echoing -p && touch ./echoing/naineel.txt

echo $env | cat echoing/naineel.txt

echo $PATH >> .env


#mkdir two or three folder 
mkdir -p index

#top - htop
#nproc - cpu
#ps - system processes
#free - free

