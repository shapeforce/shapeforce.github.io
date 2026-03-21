# Sketchfab Model Section Design

**Date:** 2026-03-21

## Goal

Embed the ShapeForce TPU Sketchfab model into the project page in a way that feels similar to `e-flesh.com`, while still fitting naturally into the current single-page academic layout.

## Approved Direction

- Place a new standalone `3D Model` section directly after the existing `Video` section.
- Use an inviting heading and supporting copy similar to the reference site's "try out" wording.
- Make the Sketchfab embed the focus of the section with a large, centered viewer card.
- Keep one clear external action: `Open on Sketchfab`.

## Why This Placement

- It keeps the interactive content high on the page, where visitors are still engaged.
- It matches the reference site's pattern of presenting the model as its own showcase block.
- It avoids crowding the `Overview` figure and does not compete with the abstract.

## Visual Notes

- Use a dedicated showcase card with rounded corners and subtle shadow.
- Keep the section background light and clean so the iframe remains prominent.
- Match existing site typography and spacing rather than introducing a new design system.

## Constraints

- The page is static HTML/CSS with no framework.
- The model should remain fully responsive on desktop and mobile.
- The embed should use the provided Sketchfab URL and permissions.
