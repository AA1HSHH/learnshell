#!/bin/bash
#leetcode 194
arr=()
n=1
a=c
i=1
function charread {
    if [ n != $# ]
    then
        n=$#
    fi
    arr[${#arr[*]}]=${!i}
    a=b
}

for (( i=1;i<=$n;i++ ))
do
    while read line
    do  
        charread $line
    done<file.txt
    echo ${arr[*]}
    arr=()
done






