echo "begin to make directroies"
mkdir dir1
mkdir dir2
mkdir dir3
mkdir dir4
for ((i = 1; i < 5; i++))
    do
        if [ -d dir${i} ]
        then
            echo "make directory dir${i} successfully"
        fi
    done

echo "begin to make files"
touch test1
touch test2
touch test3
touch test4

for ((i = 1; i < 5; i++))
    do
        if [ -f test${i} ]
        then
            echo "make file test${i} successfully"
        fi
    done

for ((i = 1; i < 5; i++))
    do
        mv test${i} ./dir${i}
    done

for ((i = 1; i < 5; i++))
    do
        if [ -f test${i} ]
        then
            echo "no"
        else
            echo "move file test${i} to dir${i} successfully"
        fi
    done

