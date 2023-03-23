#!/bin/bash

# Set up GitHub repository
echo "Enter your GitHub username:"
read github_username
echo "Enter the name of your new repository:"
read repo_name

curl -u $github_username https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"

# Create a new TypeScript app with Turbo Repo
echo "Enter the name of your new TypeScript app:"
read app_name

turbo new $app_name --template typescript

cd $app_name

# Install required packages
yarn add react-query zod @mui/material @emotion/react @emotion/styled axios zod @mui/icons-material @mui/lab @mui/x-data-grid @mui/x-data-grid-pro @mui/x-data-grid-generator 

# Add a new remote to the local repository
git remote add origin 

# Push the local repository to the remote
git push -u origin main

# Install the dependencies
yarn

# Start the app
yarn start

# Open the app in the browser
open http://localhost:3000

# Open the app in VS Code
code .



