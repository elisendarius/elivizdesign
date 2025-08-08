#!/bin/bash
# Simple script to stage all changes, commit, and push to GitHub

# You can customize your commit message here:
COMMIT_MSG="Update website $(date +"%Y-%m-%d %H:%M:%S")"

git add .
git commit -m "$COMMIT_MSG"
git push origin main
