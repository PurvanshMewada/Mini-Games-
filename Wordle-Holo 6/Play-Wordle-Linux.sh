#!/bin/bash
# Opens Wordle in its own window (no tabs, no address bar).
cd "$(dirname "$0")"
URL="file://$PWD/index.html"
for b in google-chrome google-chrome-stable chromium chromium-browser microsoft-edge brave-browser; do
  if command -v "$b" >/dev/null 2>&1; then
    nohup "$b" --app="$URL" --window-size=1100,860 >/dev/null 2>&1 &
    exit 0
  fi
done
echo "Install Chrome, Chromium, Edge or Brave for the app window. Opening in your default browser instead."
xdg-open "$URL"
