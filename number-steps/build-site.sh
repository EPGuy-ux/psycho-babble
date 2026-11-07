#!/usr/bin/env bash
# Builds the public website into _site/ from number-steps.html.
# The page source has no <html>, <head> or <body> tags (the Claude artifact adds them),
# so this script adds them: everything up to the first </style> goes in <head>.
set -euo pipefail
cd "$(dirname "$0")"
out=../_site
rm -rf "$out" && mkdir -p "$out"
cut=$(grep -n -m1 '</style>' number-steps.html | cut -d: -f1)
{
  echo '<!doctype html>'
  echo '<html lang="en-GB">'
  echo '<head>'
  echo '<meta charset="utf-8">'
  echo '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">'
  echo '<meta name="description" content="Number Steps: find where a child is stuck with early number, and what to teach next. North Somerset Educational Psychology Service.">'
  echo '<meta name="theme-color" content="#5B53C9">'
  echo '<link rel="icon" href="icon.svg" type="image/svg+xml">'
  echo '<link rel="apple-touch-icon" href="apple-touch-icon.png">'
  head -n "$cut" number-steps.html
  echo '</head>'
  echo '<body>'
  tail -n +"$((cut + 1))" number-steps.html
  echo '</body>'
  echo '</html>'
} > "$out/index.html"
cp number-steps-record-sheet.pdf icon.svg apple-touch-icon.png "$out/"
touch "$out/.nojekyll"
echo "Built $out/index.html"
