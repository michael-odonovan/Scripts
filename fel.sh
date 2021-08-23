#!/bin/bash

# Note!: gsed is just for mac to gnu-sed. Change to "sed" when on linux

# assign the first variable from the bash cli to variable "filename"
filename=$1

# copy starter html and css files
cp ~/coding-files/my-snippets/html-starter.html ./$filename.html
cp ~/coding-files/my-snippets/css-document-setup.css ./$filename.css

# update link for stylesheet in html file
gsed -i "s/style.css/$filename.css/g" "$filename.html"

# update html title tag
gsed -i "s/page-title/$filename/g" "$filename.html"

# add link to html file in index.html
gsed -i '/\/body>/i\
	<a href="'$filename'.html">'$filename'<\/a>' index.html

# insert a blank line above every line which matches "regex"
gsed -i '/\/body>/{x;p;x;}' index.html


nvim -p $filename.html $filename.css
