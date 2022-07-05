#!/bin/bash
# usage example change myfiles.js to myfiles.ts:
# $ change-file-extensions.sh js ts

for file in *.$1
do
  mv "$file" "${file%.$1}.$2"
done

