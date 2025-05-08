#!/bin/bash

# === CONFIG ===
TAG=$1  # [ADD], [MODIFY], etc.
DATE=$(date "+%Y-%m-%d")
MESSAGE="$TAG updated site on $DATE"

# === RUN ===
echo "🔄 Rendering Quarto site..."
quarto render

echo "📦 Adding docs/ folder..."
git add docs

echo "📝 Committing with message: '$MESSAGE'"
git commit -m "$MESSAGE"

echo "🚀 Pushing to GitHub..."
git push
