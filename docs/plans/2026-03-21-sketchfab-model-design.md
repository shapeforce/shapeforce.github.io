# Sketchfab Model Section Design

**Date:** 2026-03-21

## Goal

Embed a small gallery of ShapeForce-related Sketchfab models into the project page in a way that feels similar to `e-flesh.com`, while still fitting naturally into the current single-page academic layout.

## Approved Direction

- Place a standalone `3D Model` section near the end of the page, directly before `BibTeX`.
- Render three models in a responsive gallery: `TPU Core`, `PLA Support`, and `PLA Camera Mount`.
- Use compact cards so all three models are visible together on desktop, while stacking cleanly on mobile.
- Keep one clear external action per card: `Open on Sketchfab`.

## Why This Placement

- It groups downloadable and exploratory assets near the end of the paper page without interrupting the research narrative.
- It still matches the reference site's pattern of offering models as a dedicated try-it section.
- It avoids crowding the `Video`, `Abstract`, and `Overview` sections while making the gallery easy to find before citation info.

## Visual Notes

- Use a dedicated showcase grid with rounded cards and subtle shadow.
- Keep the section background light and clean so the iframes remain prominent.
- Match existing site typography and spacing rather than introducing a new design system.

## Constraints

- The page is static HTML/CSS with no framework.
- The gallery should remain fully responsive on desktop and mobile.
- Each embed should use the provided Sketchfab URL and permissions.
