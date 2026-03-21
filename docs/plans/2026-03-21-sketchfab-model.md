# Sketchfab Model Section Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add an e-flesh-style Sketchfab model showcase section after the existing video section on the ShapeForce project page.

**Architecture:** The implementation stays inside the existing static site structure. `index.html` will gain a new standalone section containing the Sketchfab iframe and CTA, while `static/css/index.css` will provide the responsive showcase styling. A lightweight shell smoke test will verify the required markup appears in the homepage.

**Tech Stack:** Static HTML, CSS, shell-based smoke test using `rg`

---

### Task 1: Add a failing smoke test for the new model section

**Files:**
- Create: `tests/check_homepage_model_embed.sh`
- Test: `tests/check_homepage_model_embed.sh`

**Step 1: Write the failing test**

Create a shell script that asserts:
- `index.html` contains a `3D Model` heading
- `index.html` contains the Sketchfab embed URL
- `index.html` contains the `Open on Sketchfab` CTA label

**Step 2: Run test to verify it fails**

Run: `bash tests/check_homepage_model_embed.sh`
Expected: FAIL because the new section does not exist yet

### Task 2: Add the homepage model section

**Files:**
- Modify: `index.html`

**Step 1: Write minimal implementation**

- Insert a new section directly after the `Video` block
- Add a section title, short supporting text, Sketchfab iframe, and external CTA

**Step 2: Run test to verify it passes**

Run: `bash tests/check_homepage_model_embed.sh`
Expected: PASS

### Task 3: Style the section to match the approved direction

**Files:**
- Modify: `static/css/index.css`

**Step 1: Write minimal implementation**

- Add responsive styling for the section wrapper, card, iframe, support text, and CTA alignment
- Keep styling consistent with the current academic page while making the embed prominent

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

- Confirm the new section sits after the video block
- Confirm the Sketchfab iframe URL and CTA text are correct
- Confirm only the intended files changed
