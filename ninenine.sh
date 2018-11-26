#!/bin/bash
echo "PLEASE TYPE YOUR NUMBER"
read a
for ((i = 1; i < 10; i++)) do
    for ((p = 1; p <= i; p++)) do
        echo -n " $p X $i = "
        echo -n `expr $i \* $p`
    done
    echo 
done