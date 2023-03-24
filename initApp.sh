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



# Create a new local repository
git init

# Create a new README.md file
touch README.md

# Create a new .gitignore file
touch .gitignore

# Add the .gitignore file to the local repository
git add .gitignore

# Commit the .gitignore file to the local repository
git commit -m "Add .gitignore"

# Add the README.md file to the local repository

git add README.md

# Commit the README.md file to the local repository
git commit -m "Add README.md"

# Create a new TypeScript app with Turbo Repo

pnpm dlx create-turbo@latest

# Install required packages
pnpm add react-query zod @mui/material @emotion/react @emotion/styled axios zod @mui/icons-material @mui/lab @mui/x-data-grid @mui/x-data-grid-pro @mui/x-data-grid-generator 

# Add a new remote to the local repository
git remote add origin 

# Add the new TypeScript app to the local repository
git add .

# Commit the new TypeScript app to the local repository
git commit -m "Add $app_name"

# Push the local repository to the remote
git push -u origin main

# Install the dependencies
pnpm

# Start the app
cd $app_name
pnpm dlx turbo login

# Open the app in the browser
open http://localhost:3000

# Open the app in VS Code
code .



