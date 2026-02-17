#!/bin/zsh

# Safely clean React Native project caches and build folders
function rnclean() {
  echo "🧹 Cleaning React Native project..."
  
  echo "1/3: Clearing Metro bundler cache..."
  rm -rf /tmp/metro-*
  
  echo "2/3: Deleting local Android build folders..."
  rm -rf android/app/build
  rm -rf android/.gradle
  
  echo "3/3: Deleting local iOS build folders..."
  rm -rf ios/build
  
  echo "✨ Done! Reclaimed space and ready for a fresh build."
}
