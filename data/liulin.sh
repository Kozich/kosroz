#!/bin/bash
for let in let*; do
    awk -f liulin.awk $let > p$let
done
awk 'BEGIN {FS=","}; ($1 !~ /\#t/) {print $2 FS $6; next }' plet* | sort -g | awk -f avgpder.awk > liulin.dat