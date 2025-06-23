#!/bin/bash

# Initialize git if not done
if [ ! -d ".git" ]; then
  git init
  git branch -M main
  git remote add origin https://github.com/evanssamwel/Invoice-system-laravel.git
fi

# Commit each untracked, non-ignored file one by one
git ls-files --others --exclude-standard | while read -r file; do
  git add "$file"
  git commit -m "Add $file"
done

# Push all commits at once
git push -u origin main
