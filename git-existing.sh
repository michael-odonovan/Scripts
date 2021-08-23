#!/bin/bash

# Make sure you have an example .gitconfig file located here:
# ~/.sample-gitconfig

# How to use:
# cd to where you want to create a project, ie the parent of where the project folder will be created.
# `git-new.sh repo-name`

repo_name=$1

# check repo name hasn't been left out
if [ -z "$repo_name" ];
then
	echo 'you forgot to include a name for the new repo'

else
	# create .gitconfig
	cp ~/sample-gitignore ./.gitignore

	# create git repo
	git init
	git add .
	git commit -m "first commit"
	git branch -M main
	git remote add origin git@github.com:michael-odonovan/$repo_name.git
	git push -u origin main

fi

