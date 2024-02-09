#!/bin/bash
# needs brew install imagemagick
# Usage
# cd into folder
# $ reduce-images-throwaways.sh

mogrify -resize 1000x1000\> *
