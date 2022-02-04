#!/bin/bash
# Simple script to convert all jpg and png images in a folder to web format
# dependencies: imagemagick, libwebp-dev
# usage: 
# $ cd into the folder containing images
# $ convert-webp.sh


for f in *.jpg; do convert $f $f.webp; done
rename "s/.jpg.webp/.webp/g" *

for f in *.png; do convert $f $f.webp; done
rename "s/.png.webp/.webp/g" *

trash *.jpg
trash *.png

