#!/bin/bash

# usage example all files in a folder from .js to .ts
# $ file-ext.sh js ts

for file in *.$1
do
  mv "$file" "${file%.$1}.$2"
done
echo "files changed"

