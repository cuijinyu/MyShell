# /bin/bash
while true
    echo "List Directory.........l"
    echo "change Directory.........c"
    echo "edit file.........e"
    echo "remove file .........r"
    echo "exit menu............q"
    read ch
do 
    case $ch in
        l) ls;;
        c)
            echo "Enter target dircetory"
            read direc
            cd $direc;;
        e)
            echo "Enter file name"
            read file
            vim $file;;
        r)
            echo "Enter file name"
            read file
            rm $file;;
        q|Q)
            echo "GoodBye"
            break;;
        *)
            echo "illegal Option"
    esac
done