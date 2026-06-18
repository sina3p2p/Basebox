#!/bin/zsh

# Safely clean React Native project caches and build folders
function rn-clean() {
  echo "🧹 Cleaning React Native project..."
  
  echo "1/3: Deleting local Android build folders..."
  rm -rf android/app/build
  rm -rf android/.gradle
  rm -rf android/app/.cxx

  echo "2/3: Deleting release artifacts from android/app/release..."
  find android/app/release -maxdepth 1 \( -name "*.apk" -o -name "*.aab" -o -name "mapping.txt" -o -name "output-metadata.json" \) -delete 2>/dev/null
  
  echo "3/3: Deleting local iOS build folders and Pods..."
  rm -rf ios/build
  rm -rf ios/Pods
  
  echo "✨ Done! Reclaimed space and ready for a fresh build."
}
