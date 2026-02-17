#!/bin/zsh

# Safely clean React Native project caches and build folders
function rn-clean() {
  echo "🧹 Cleaning React Native project..."
  
  echo "1/2: Deleting local Android build folders..."
  rm -rf android/app/build
  rm -rf android/.gradle
  rm -rf android/app/.cxx
  
  echo "2/2: Deleting local iOS build folders..."
  rm -rf ios/build
  
  echo "✨ Done! Reclaimed space and ready for a fresh build."
}
