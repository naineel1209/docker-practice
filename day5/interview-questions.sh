#!/bin/bash
#
#
# Written By Naineel Soyantar
#

set -x
set -e
set -o pipefail

#list all the processe's PID
ps -ef | awk -F " " '{print$2}'


#get remote logs
#curl call and pipe it to grep
cat machine-app.log | grep -i "ERROR"


#print numbers divisible by 3, 5 and not 15 - upto 1000

for i in {1..1000}; do
    if (( (i % 3 == 0 || i % 5 == 0) && i % 15 != 0 )); then
        echo $i
    fi
done


#write a script to print number of S in mississipi
echo "mississipi" | awk -F "" '{for (i=1; i<=NF; i++) print $i}' | grep "s" -c

#OR


# provide the x to the grep input
x=mississipi

grep -io "s" <<< "$x" \  #this provides the $x to the grep as input
| grep -ic "s"


#what is crontab ? explain its usage


#how to open file in readonly mode
touch index.js


#soft link - soft link means - the files are poiting to each other - so when one of the file is deleted then the otehr file is also deleted

#hard link - a copy of a file is created - even if the file is deleted - hard link saves the file and do not delete.


# Networking - traceroute -  traces the route to the endpoints


#sort the list of the file names