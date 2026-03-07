#!/bin/bash
set -e

TEST_BRANCH="working01"

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

if [ -n "$(git status --porcelain)" ]; then
  echo "You have uncommitted changes. Commit or stash them first."
  exit 1
fi

echo "Current branch: $CURRENT_BRANCH"
echo "Publishing changes from $TEST_BRANCH to main"

git switch main
git pull origin main
git merge "$TEST_BRANCH"
git push origin main
git switch "$TEST_BRANCH"

echo "Done. Merged $TEST_BRANCH into main and switched back to $TEST_BRANCH."