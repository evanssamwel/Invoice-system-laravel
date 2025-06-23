#!/bin/bash

# Initialize git repo if not already done
if [ ! -d ".git" ]; then
  git init
  git branch -M main
  git remote add origin https://github.com/evanssamwel/Invoice-system-laravel.git
fi

# Commit and push README.md first (optional, if exists)
if [ -f "README.md" ]; then
  git add README.md
  git commit -m "Add README.md"
  git push -u origin main
fi

# Loop through all files except .git and README.md
for file in *; do
  # Skip .git directory and README.md (already pushed)
  if [ "$file" != "README.md" ] && [ "$file" != ".git" ] && [ -f "$file" ]; then
    git add "$file"
    git commit -m "Add $file"
    git push origin main
  fi
done
