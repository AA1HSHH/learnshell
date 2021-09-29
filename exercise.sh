#!/bin/bash
function judge {
if [ $1 -eq $2 ]
then
    echo "average"
else
    if [ $1 -gt $2 ]
    then
        echo "above"
    else
        echo "below"
    fi
fi
}

case $1 in
"sysinfo")
    uname -a;;
"user")
    pwd
    whoami;;
add)
    expr $2 + $3;;
"judge")
    if [ $2 = "man" ]
    then
      judge $3 175  
    else
      judge $3 165
    fi;;
*) echo "not support this para";;
esac
    
