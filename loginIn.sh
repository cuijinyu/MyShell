#!/bin/bash
n=1
while [ $n -gt 0 ]
do 
    echo "xinjian--------------------1"
    echo "denglu---------------------2"
    echo "exit-----------------------3"
    read n
    case $n in 
    1) echo "username"
       read name
       if [ -f name ]
        then
            echo "same username"
        else
            touch ~/$name
            echo "passwd"
            read passwd
            echo $passwd >> ~/$name
       fi;;
    2) echo "username"
       read name1
       if [ -f $name1 ]
        then 
            echo "passwd"
        else
            echo "yonghu wrong"
       fi
       read passwd1
       if [ $passwd1 -eq `cat ~/$name1` ]
        then
            echo "success"
            break
        else
            echo "passwd wrong"
        fi;;
    3) break;;
    esac
done