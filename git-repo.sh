#!/bin/bash
# creates a local git repo in the current folder and then pushes up to an existing remote github repo of the same name.

# On a new computer - make sure you have an example .gitconfig file located here:
# ~/.sample-gitconfig

# How to use:
# 1)
# - Create the repo on Github and set whether you want it public or private.

# 2)
# - Move into the parent folder of the project e.g. Js-projects/

# 3)
# make sure you get the github repo name right!!!:
# `$ git-repo.sh repo-name`

repo_name=$1

# check repo name hasn't been left out
if [ -z "$repo_name" ];
then
	echo 'you forgot to include a name for the new repo'

else

	mkdir $repo_name
	cd $repo_name
	echo "# react-pomodoro-timer" >> README.md
	cp ~/.sample-gitignore ./.gitignore
	git init
	git add README.md
	git commit -m "first commit"
	git branch -M main
	git remote add origin git@github.com:michael-odonovan/$repo_name.git
	git push -u origin main

fi

