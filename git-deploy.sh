#!/bin/bash
npm run build
cp ./build ../personal_portfolio/
git init
git remote add origin https://github.com/deshneni-akhil/deshneni-akhil.github.io.git
git checkout master
git add .
# Prompt the user for input
read -p "Enter your input: " userInput
# Get the current system timestamp in UTC
TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
# Commit the changes with the user input and system timestamp
git commit -m "updated $userInput timestamp at $TIMESTAMP"
git commit -m "updated {} timestamp"
git push -f --set-upstream origin master