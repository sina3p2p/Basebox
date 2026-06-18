#!/bin/zsh

# Safely clean global Gradle and Android SDK caches
function android-clean() {
  echo "🧹 Cleaning Android & Gradle caches..."

  echo "1/5: Cleaning Gradle build cache (~/.gradle/caches)..."
  rm -rf ~/.gradle/caches

  echo "2/5: Cleaning Gradle daemon logs and tmp files (~/.gradle/daemon)..."
  rm -rf ~/.gradle/daemon

  echo "3/5: Cleaning Gradle wrapper downloads (~/.gradle/wrapper/dists)..."
  rm -rf ~/.gradle/wrapper/dists

  echo "4/5: Cleaning Android SDK build tools temp files (~/.android/cache)..."
  rm -rf ~/.android/cache

  echo "5/5: Cleaning AVD snapshots cache (~/.android/avd)..."
  find ~/.android/avd -name "snapshots" -type d -exec rm -rf {} + 2>/dev/null

  echo "✨ Done! Gradle and Android caches cleared. Run your build to re-download dependencies."
}
