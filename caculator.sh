#! /bin/bash
s=0
while true
do
    echo "........+"
    echo "........-"
    echo "........*"
    echo "......../"
    echo "........q"
    echo "Please type your word:(e.g.1 + 2)"
    read a b c
    case $b in 
        +)
        let s=a+c
        echo "$a + $c = " $s;;
        -)
        let s=a-c
        echo "$a - $c = " $s;;
        \x)
        let s=a*c
        echo "$a x $c = " $s;;
        \/)
        let s=a/c
        echo "$a / $c = " $s;;
        *)
        echo "$a|$b|$c"
    esac
    case $a in
        q) break;;
    esac
done