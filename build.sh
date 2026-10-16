#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
if ! command -v gradle >/dev/null 2>&1; then
  echo "Gradle 8.5+ is required. Open this project in Android Studio/Klencod IDE or install Gradle." >&2
  exit 1
fi
gradle --no-daemon clean assembleDebug assembleRelease
echo "Debug APK: app/build/outputs/apk/debug/app-debug.apk"
echo "Release APK: app/build/outputs/apk/release/app-release-unsigned.apk (unsigned)"
