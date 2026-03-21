# Sketchfab Model Section Design

**Date:** 2026-03-21

## Goal

Embed a small gallery of ShapeForce-related Sketchfab models into the project page in a way that feels similar to `e-flesh.com`, while still fitting naturally into the current single-page academic layout.

## Approved Direction

- Place a standalone `3D Model` section near the end of the page, directly before `BibTeX`.
- Render one `Shapeforce Total` assembly model in its own centered row, slightly larger than the part cards but still visually restrained.
- Render four part models below it in a stable `2 x 2` grid: `TPU Core`, `PLA Support`, `PLA Camera Mount`, and `PLA`.
- Keep the overall width closer to the existing paper content sections rather than spanning very wide.
- Keep one clear external action per card: `Open on Sketchfab`.

## Why This Placement

- It groups downloadable and exploratory assets near the end of the paper page without interrupting the research narrative.
- It gives the full assembly more prominence than the individual printable parts without overpowering the page.
- It avoids crowding the `Video`, `Abstract`, and `Overview` sections while making the gallery easy to find before citation info.

## Visual Notes

- Use a dedicated showcase stack with a single featured card row above a compact `2 x 2` parts grid.
- Keep the section background light and clean so the iframes remain prominent.
- Match existing site typography and spacing rather than introducing a new design system.

## Constraints

- The page is static HTML/CSS with no framework.
- The gallery should remain responsive on desktop and mobile.
- Mobile should still keep the parts in two columns rather than collapsing them into a single long column.
- Each embed should use the provided Sketchfab URL and permissions.
