#!/bin/bash
if [ ! -f ~/minda ]
then touch ~/minda
fi
while true
    echo "If you want to add a user please type ------a"
    echo "If you want to del a user please type ------d"
    echo "If you want to watch all users please type--l"
    echo "If you want to edit users please type ------e"
    echo "If you want to exit please type-------------q"
    read b
do 
    case $b in
    a) echo "Please type your name:"
       read name
       echo "Please type your number:"
       read number
       echo $name $number >> ~/minda;;
    d) echo "Please type which name do you want to del:"
       read name
       cat ~/minda|grep ^[^$name] > ~/minda;;
    l) cat ~/minda;;
    e) echo "Please type which name do you want to edit:"
       read name
       cat ~/minda|grep ^[^$name] > ~/minda
       echo "Please type your new name:"
       read name
       echo "Please type your new number:"
       read number
       echo $name $number >> ~/mind;;
    q) exit;;
    esac
done