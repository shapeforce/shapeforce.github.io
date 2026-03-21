#!/usr/bin/env bash

set -euo pipefail

file="index.html"
css="static/css/index.css"

overview_line=$(rg -n '<!-- Overview -->' "$file" | cut -d: -f1)
model_line=$(rg -n '<h2 class="title is-3 has-text-centered">3D Model</h2>' "$file" | cut -d: -f1)
bibtex_line=$(rg -n '<section class="section" id="BibTeX">' "$file" | cut -d: -f1)

rg -q '<h2 class="title is-3 has-text-centered">3D Model</h2>' "$file"
rg -q 'class="model-showcase-shell"' "$file"
rg -q 'class="model-feature-row"' "$file"
rg -q 'class="model-parts-grid"' "$file"
if sed -n '/<!-- 3D Model -->/,/<!-- BibTeX -->/p' "$file" | rg -q 'columns is-centered|column is-full|model-showcase-grid'; then
  exit 1
fi
rg -q 'Explore the full assembly and printable parts in 3D on Sketchfab\.' "$file"
rg -q 'Shapeforce Total' "$file"
rg -q 'TPU Core' "$file"
rg -q 'PLA Support' "$file"
rg -q 'PLA Camera Mount' "$file"
rg -q '>PLA<' "$file"
rg -q 'https://sketchfab.com/models/dc8a270c416340b2a7df98a3dd53413a/embed' "$file"
rg -q 'https://sketchfab.com/models/32f079f069004e1c9497674cae4f24e4/embed' "$file"
rg -q 'https://sketchfab.com/models/2e710d79398d499b83c6cf529419b52f/embed' "$file"
rg -q 'https://sketchfab.com/models/bdd4ce5ca86341c1ba2348757a62b034/embed' "$file"
rg -q 'https://sketchfab.com/models/742191e7106d4551b5e433886b39703d/embed' "$file"
rg -Fq 'width: min(1100px, calc(100vw - 2rem));' "$css"
test "$(rg -c 'grid-template-columns: repeat\(2, minmax\(0, 1fr\)\);' "$css")" -eq 2

test "$(rg -c 'Open on Sketchfab' "$file")" -eq 5
test "$model_line" -gt "$overview_line"
test "$model_line" -lt "$bibtex_line"
