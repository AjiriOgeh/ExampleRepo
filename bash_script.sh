#!/bin/bash

echo "Hello"
read -p "Enter repository name: " repository

mkdir $repository
cd $repository
mkdir .github
cd .github
mkdir workflows
touch workflows.yml
cd ..
cd ..
gh repo create $repository --public
echo $repository >> README.md
git init
git add .
git commit -m "initial Commit"
git branch -M main
git remote add origin https://github.com/AjiriOgeh/$repository.git
git push -u origin main
git branch dev