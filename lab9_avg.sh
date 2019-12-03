#!/bin/bash

sum=0
args=$#

if [ $args -lt 1 ]; then
	echo "Please enter some numbers."
	exit 1
fi 

while [ -n "$1" ]; do
	sum=$(expr $sum + $1)
	shift
done

avg=$(echo "scale=2; $sum / $args"|bc)

echo "The average of your $args numbers is $avg"
