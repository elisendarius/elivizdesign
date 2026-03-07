#!/bin/bash
# Stage all changes, commit, and push to the current branch

# Detect current branch
BRANCH=$(git rev-parse --abbrev-ref HEAD)

# Commit message
COMMIT_MSG="Update website $(date +"%Y-%m-%d %H:%M:%S")"

git add .
git commit -m "$COMMIT_MSG"

# Push to the same branch
git push origin "$BRANCH"
