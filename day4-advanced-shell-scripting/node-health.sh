#!/bin/bash
#what do we want to do
#
#######################################################
#Authored By: Naineel Soyantar - naineelsoyantar@gmail.com
#This script outputs the node health
#V1
#######################################################

set -x #DEBUG mode  - names every command before its output
set -e #Exits on error
set -o pipefail #pipefail - willf throw errors on piped errors too

set -xeo pipefail

#echo "reading the echo commands\n"
df -h #disk space

#echo "free memory \n"
free -g #free memory in gigs

#echo "nproc - CPU details \n"
nproc #printing the logical cpus


#ps - lists all the processes run by ubuntu,
# grep
ps -ef | grep nixd # | sends the output of the first command to the second command

#date - passes the response to the stdin - it depends on the commands - that they pass the output to the stdin
# | grep -i "2024" - will only listen if the output  from the previous is not passed to the next command
date | echo

date | grep -i "2024"


# awk -F - field separator
ps -aef | grep -i "nixd" | awk -F " " '{print $2 ", " $5}' 

# extremely useful case - finding erros in the log file - errors.log in case - use
cat machine-app.log | grep -i "ERROR"



#curl - methods
curl https://jsonplaceholder.typicode.com/posts \
> -X POST \
> -H 'Content-Type: application/json' \
> -D "{\"title\":\"foo\",\"body\":\"bar\",\"userId\":1}" \
> -o post.json


#find - find a specific file in any of the given folders


for i in {1..100};
do 
	echo " the number is " $i;
done
