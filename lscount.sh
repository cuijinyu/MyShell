#! /bin/bash
ls -al
filenum=0
dirnum=0
for q in `ls -a`
do
    if [ -d $q ]
    then 
        dirnum=`expr $dirnum + 1`
    else filenum=`expr $filenum + 1`
    fi
done
echo "the number of dirctory is $dirnum"
echo "the number of file is $filenum"