#!/bin/bash
# Opens Wordle in its own window (no tabs, no address bar).
cd "$(dirname "$0")"
URL="file://$PWD/index.html"
for app in "Google Chrome" "Microsoft Edge" "Brave Browser" "Chromium"; do
  if [ -d "/Applications/$app.app" ]; then
    open -na "$app" --args --app="$URL" --window-size=1100,860
    exit 0
  fi
done
echo "Install Chrome, Edge or Brave for the app window. Opening in your default browser instead."
open "$URL"
