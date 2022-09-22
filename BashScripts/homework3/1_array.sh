#!/bin/bash

declare -a arr
size="$1"

if [ "$size" -gt "3" ]; then

    for (( i=0; i<"$size"; i++ )); do
        for (( j=0; j<"$size"; j++ )); do
            let arr[$i,$j]="$RANDOM%10"
            printf "%2d" ${arr[$i,$j]}
        done
        echo ""
    done

else
    echo "Enter a parameter value greater than '3'"
fi
