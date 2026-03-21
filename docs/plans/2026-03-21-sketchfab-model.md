# Sketchfab Model Section Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add an e-flesh-style Sketchfab model gallery section before BibTeX on the ShapeForce project page, with a featured total assembly row and a 2 x 2 part grid.

**Architecture:** The implementation stays inside the existing static site structure. `index.html` will keep the model section before BibTeX but reorganize it into a featured assembly card plus a four-part grid with individual titles and CTAs, while `static/css/index.css` will provide the restrained layout styling. A lightweight shell smoke test will verify the section order, model inventory, and required grid structure in the homepage and stylesheet.

**Tech Stack:** Static HTML, CSS, shell-based smoke test using `rg`

---

### Task 1: Add a failing smoke test for the new model section

**Files:**
- Create: `tests/check_homepage_model_embed.sh`
- Test: `tests/check_homepage_model_embed.sh`

**Step 1: Write the failing test**

Create or update a shell script that asserts:
- `index.html` contains a `3D Model` heading
- `index.html` contains all five required Sketchfab embed URLs
- `index.html` contains five `Open on Sketchfab` CTA labels
- `index.html` contains one featured assembly row and one `2 x 2` parts grid
- `static/css/index.css` keeps the parts grid at two columns, including on mobile
- the `3D Model` section appears after `Overview` and before `BibTeX`

**Step 2: Run test to verify it fails**

Run: `bash tests/check_homepage_model_embed.sh`
Expected: FAIL because the new section does not exist yet

### Task 2: Rebuild the homepage model section layout

**Files:**
- Modify: `index.html`

**Step 1: Write minimal implementation**

- Replace the current three-up layout with a featured `Shapeforce Total` card row
- Add a four-card `2 x 2` parts grid beneath it
- Include the new `PLA` model alongside the existing three part models

**Step 2: Run test to verify it passes**

Run: `bash tests/check_homepage_model_embed.sh`
Expected: PASS

### Task 3: Style the section to match the approved direction

**Files:**
- Modify: `static/css/index.css`

**Step 1: Write minimal implementation**

- Add responsive styling for the section wrapper, featured row, parts grid, cards, iframes, support text, and CTA alignment
- Keep styling consistent with the current academic page while keeping the overall width close to other content sections
- Preserve a two-column parts grid on mobile instead of collapsing to a single column

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
- Confirm all five Sketchfab iframe URLs and CTA texts are correct
- Confirm only the intended files changed
