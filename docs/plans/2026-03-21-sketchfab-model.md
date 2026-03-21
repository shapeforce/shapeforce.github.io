# Sketchfab Model Section Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add an e-flesh-style Sketchfab model gallery section before BibTeX on the ShapeForce project page.

**Architecture:** The implementation stays inside the existing static site structure. `index.html` will move the model section to the end of the page and expand it into a three-card Sketchfab gallery with individual titles and CTAs, while `static/css/index.css` will provide the responsive grid styling. A lightweight shell smoke test will verify the section order and required model markup in the homepage.

**Tech Stack:** Static HTML, CSS, shell-based smoke test using `rg`

---

### Task 1: Add a failing smoke test for the new model section

**Files:**
- Create: `tests/check_homepage_model_embed.sh`
- Test: `tests/check_homepage_model_embed.sh`

**Step 1: Write the failing test**

Create or update a shell script that asserts:
- `index.html` contains a `3D Model` heading
- `index.html` contains all three required Sketchfab embed URLs
- `index.html` contains three `Open on Sketchfab` CTA labels
- the `3D Model` section appears after `Overview` and before `BibTeX`

**Step 2: Run test to verify it fails**

Run: `bash tests/check_homepage_model_embed.sh`
Expected: FAIL because the new section does not exist yet

### Task 2: Move and expand the homepage model section

**Files:**
- Modify: `index.html`

**Step 1: Write minimal implementation**

- Remove the existing single-model section from after the `Video` block
- Insert a new section before `BibTeX`
- Add three model cards with titles, Sketchfab iframes, and external CTAs

**Step 2: Run test to verify it passes**

Run: `bash tests/check_homepage_model_embed.sh`
Expected: PASS

### Task 3: Style the section to match the approved direction

**Files:**
- Modify: `static/css/index.css`

**Step 1: Write minimal implementation**

- Add responsive styling for the section wrapper, grid, cards, iframes, support text, and CTA alignment
- Keep styling consistent with the current academic page while making the three-model gallery clear and balanced

**Step 2: Run test to verify it still passes**

Run: `bash tests/check_homepage_model_embed.sh`
Expected: PASS

### Task 4: Perform final verification

**Files:**
- Modify: none

**Step 1: Run verification commands**

Run:
- `bash tests/check_homepage_model_embed.sh`
- `git diff -- index.html static/css/index.css tests/check_homepage_model_embed.sh docs/plans/2026-03-21-sketchfab-model-design.md docs/plans/2026-03-21-sketchfab-model.md`

**Step 2: Review outcome**

- Confirm the new section sits before `BibTeX`
- Confirm all three Sketchfab iframe URLs and CTA texts are correct
- Confirm only the intended files changed
