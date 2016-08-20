#!/bin/bash
for let in let*; do
    awk -f liulin.awk $let > p$let
done
awk 'BEGIN {FS=","}; ($1 !~ /\#t/) {print $2 FS $6; next }' plet* | sort -g | awk -f avgpder.awk > liulinavg.dat
#awk -f avgph.awk -v max=$(tail -n 1 liulin.dat | awk '{print $1}')  liulin.dat > liulinavg.dat
