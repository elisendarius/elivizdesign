#!/bin/bash
set -e

BRANCH=$(git rev-parse --abbrev-ref HEAD)
COMMIT_MSG="Update website $(date +"%Y-%m-%d %H:%M:%S")"

echo "Current branch: $BRANCH"

git add .

git commit -m "$COMMIT_MSG" || {
  echo "No changes to commit."
}

git push origin "$BRANCH"

echo "Done. Pushed to $BRANCH."
