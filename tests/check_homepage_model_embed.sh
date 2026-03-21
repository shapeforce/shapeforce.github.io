#!/usr/bin/env bash

set -euo pipefail

file="index.html"

rg -q '<h2 class="title is-3 has-text-centered">3D Model</h2>' "$file"
rg -q 'TPU model to try out!' "$file"
rg -q 'https://sketchfab.com/models/32f079f069004e1c9497674cae4f24e4/embed' "$file"
rg -q 'Open on Sketchfab' "$file"
