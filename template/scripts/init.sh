#!/bin/bash
set -e

PROJECT_NAME="${1:-new-project}"

echo "Initializing workspace: $PROJECT_NAME"

# Create new directory
mkdir -p "$PROJECT_NAME"

# Copy template files, excluding git history and this script
rsync -a --exclude='.git' --exclude='scripts/init.sh' . "$PROJECT_NAME/" 2>/dev/null || \
  (cp -r . "$PROJECT_NAME/" && rm -rf "$PROJECT_NAME/.git" "$PROJECT_NAME/scripts/init.sh")

cd "$PROJECT_NAME"

# Replace basic placeholders
sed -i.bak "s/\[FILL: project name\]/$PROJECT_NAME/g" AGENTS.md 2>/dev/null || true
rm -f AGENTS.md.bak

echo ""
echo "Done. Next steps:"
echo "  cd $PROJECT_NAME"
echo "  git init"
echo "  # Fill in the remaining [FILL] markers in AGENTS.md and docs/CONTEXT.md"
echo "  # Add skills to workspace.json, then run: ./scripts/workspace sync"
echo "  git add ."
echo "  git commit -m 'init'"
