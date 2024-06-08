#!/bin/bash
#what do we want to do
#
#######################################################
#Authored By: Naineel Soyantar - naineelsoyantar@gmail.com
#This script outputs the node health
#V1
#######################################################

set -x

#echo "reading the echo commands\n"
df -h #disk space

#echo "free memory \n"
free -g #free memory in gigs

#echo "nproc - CPU details \n"
nproc #printing the logical cpus
