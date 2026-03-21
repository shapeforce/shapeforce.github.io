#!/usr/bin/env bash

set -euo pipefail

file="index.html"

overview_line=$(rg -n '<!-- Overview -->' "$file" | cut -d: -f1)
model_line=$(rg -n '<h2 class="title is-3 has-text-centered">3D Model</h2>' "$file" | cut -d: -f1)
bibtex_line=$(rg -n '<section class="section" id="BibTeX">' "$file" | cut -d: -f1)

rg -q '<h2 class="title is-3 has-text-centered">3D Model</h2>' "$file"
rg -q 'Explore the printable parts in 3D on Sketchfab\.' "$file"
rg -q 'TPU Core' "$file"
rg -q 'PLA Support' "$file"
rg -q 'PLA Camera Mount' "$file"
rg -q 'https://sketchfab.com/models/32f079f069004e1c9497674cae4f24e4/embed' "$file"
rg -q 'https://sketchfab.com/models/2e710d79398d499b83c6cf529419b52f/embed' "$file"
rg -q 'https://sketchfab.com/models/bdd4ce5ca86341c1ba2348757a62b034/embed' "$file"

test "$(rg -c 'Open on Sketchfab' "$file")" -eq 3
test "$model_line" -gt "$overview_line"
test "$model_line" -lt "$bibtex_line"
