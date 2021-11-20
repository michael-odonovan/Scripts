#!/bin/bash
# usage
# $ copy-file.sh original copy1 copy2 copy3

original=$1
copy1=$2
copy2=$3
copy3=$4
copy4=$5
copy5=$6
copy6=$7
copy7=$8
copy8=$9

for file in \
$copy1 \
$copy2 \
$copy3 \
$copy4 \
$copy5 \
$copy6 \
$copy7 \
$copy8 \
; do cp \
$original \
"$file" ; done

