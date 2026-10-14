---
name: new-screen
description: >-
  Standard workflow for building or modifying any screen in Day-Balance from Figma designs,
  CodeTea Flutter exports, and live Figma MCP inspection. Use whenever building a screen.
---

# New Screen Workflow

When asked to build or rebuild a screen in Day-Balance, execute these steps in exact order:

## Step 0: Branching
- Check out a dedicated feature branch for the screen:
  ```bash
  git checkout -b feature/<screen-name>
  ```

## Step 1: Design Source Inspection (Strict Order)
Before building or changing ANY screen, in this order:
1. **Find row in `design/FIGMA_LINKS.md`**: Identify the corresponding PNG file, `.dart` export, and Figma frame link.
2. **Look at the PNG**: Inspect visual aesthetics, alignment, and components.
3. **Read the `.dart` export fully**: Examine exact measurements, margins, padding, colors, font sizes, text strings, and layout tree.
4. **Read live Figma frame through Figma MCP**:
   - Use the link or node ID from that row.
   - Read ONLY that specific frame, not the entire file.
5. **Reconcile sources**:
   - If sources disagree, do not guess: prefer live Figma values, use PNG to check the look, and list every disagreement in the final report.
   - If the Figma MCP fails or is rate limited, continue with the PNG and .dart export, and mention it in the report. Do not stop to ask. For screens with no PNG, use the .dart export only. If something is unclear, make the most reasonable choice and list all assumptions in the report.

## Step 2: Documentation (Plan Checklist First)
- Create or update `docs/screens/<screen-name>.md` with status `DRAFT` and a detailed `Plan` checklist before writing any code.
- Update `docs/PROGRESS.md` marking the screen row as `DRAFT`.

## Step 3: Clean Implementation
- Build the screen cleanly using:
  - Theme tokens: `mobile/lib/core/theme/` (`app_colors.dart`, `app_text_styles.dart`, `app_theme.dart`).
  - Shared widgets: `mobile/lib/shared/widgets/` (`AppPrimaryButton`, `AppSecondaryButton`, `AppTextField`, `AppPasswordField`, etc.).
  - Responsive layout: `Column`, `Row`, `Expanded`, `Padding`, `SafeArea`, `SingleChildScrollView`, `ConstrainedBox`.
  - NEVER paste exported CodeTea code into `lib/` unchanged.
  - NEVER import from `/design`.
  - NEVER edit files in `/design`.

## Step 4: Verification & Comparison
- Run `flutter analyze` in `mobile/`: 0 errors/issues required.
- Run `flutter test` in `mobile/`: All tests must pass.
- Run `npx tsc --noEmit` in `backend/` to ensure full repo integrity.
- Run the screen (or test) and compare it against the PNG, noting any visual differences.

## Step 5: Docs Handoff
- Update `docs/screens/<screen-name>.md`, replacing the `Plan` checklist with the `Done` section.
- Update `docs/PROGRESS.md` marking status as `DONE`.

## Step 6: Git Commit & Handoff
- Stage all files and commit with a clear message:
  ```bash
  git add .
  git commit -m "feat(<scope>): rebuild <screen> from Figma design"
  ```
- **NEVER push to remote (`git push`) yourself.**
- Report the branch name to the user so they can push manually and give instructions to continue.
