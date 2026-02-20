#!/bin/bash
set -e

echo "🔧 Running maintenance tasks..."

echo "📦 Updating pre-commit hooks..."
uvx pre-commit autoupdate

echo "🚀 Updating pinned GitHub Actions..."
pinact run --update

echo "✅ Maintenance tasks completed!"
