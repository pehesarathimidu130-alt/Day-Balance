# Figma Workflow Rule

Before building or changing ANY screen, in this order:
1. Find its row in `figma/FIGMA_LINKS.md`.
2. Look at the PNG.
3. Read the `.dart` export fully.
4. Read the live Figma frame through the Figma MCP using the link in that row (read only that frame, not the whole file).
5. Only then plan and build.

Use the data as the exact source for sizes, spacing, colors, fonts, text, icons and structure, but rebuild the screen cleanly using our theme tokens (`mobile/lib/core/theme`) and shared widgets (`mobile/lib/shared/widgets`), and make it responsive. Never paste exported code unchanged, never import from `/figma`, never edit `/figma`.

If the sources disagree, do not guess: prefer live Figma values, use the PNG to check the look, and list every disagreement in the report. If any source is missing or the Figma MCP does not work, tell me and ask before continuing.

After building, run the screen and compare it with the PNG, and list any differences.
