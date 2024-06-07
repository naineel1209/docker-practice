#!/bin/bash


#sample shel script
echo "my name is naineel"

echo "creating the file to subfolder - echoing"

mkdir echoing -p && touch ./echoing/naineel.txt

echo $env | cat echoing/naineel.txt

