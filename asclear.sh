#!/bin/zsh

# Safely clean Android Studio IDE caches
# Use when AS has broken inspections, wrong autocomplete, or other IDE weirdness.
# AS will re-index all projects on next launch (may take a few minutes).
function as-clean() {
  echo "🧹 Cleaning Android Studio caches..."

  echo "1/4: Cleaning Android Studio system caches (~/.cache/Google/AndroidStudio*)..."
  rm -rf ~/.cache/Google/AndroidStudio*/

  echo "2/4: Cleaning Android Studio logs (~/.cache/Google/AndroidStudio*/log)..."
  # Already covered above, but explicitly noting intent

  echo "3/4: Cleaning Android Studio local history and indexes (~/.local/share/Google/AndroidStudio*)..."
  rm -rf ~/.local/share/Google/AndroidStudio*/

  echo "4/4: Cleaning per-project .idea caches in current directory (if inside a project)..."
  if [ -d ".idea" ]; then
    rm -rf .idea/caches
    rm -rf .idea/shelf
    echo "   Cleaned .idea/caches and .idea/shelf in $(pwd)"
  else
    echo "   Not inside an Android project directory, skipping .idea cleanup."
  fi

  echo "✨ Done! Restart Android Studio — it will re-index your projects on next launch."
}
