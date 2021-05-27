#!/usr/bin/env bash

for i in {30..37}; do 
    for a in {40..47}; do 
        echo -ne " \e[${i};${a}m ${i} / ${a} \e[0m "
    done
    echo ""
done
echo -e "\x1b[?25l"

