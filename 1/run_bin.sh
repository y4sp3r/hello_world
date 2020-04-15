#!/bin/sh

for i in $( seq 1 10000 )
do
    taskset -c 1 ./$1 >> /dev/null
done
