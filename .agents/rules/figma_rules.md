# Figma Flutter Exports Rule

Before building or changing ANY screen:
1. Find the `.dart` export for that screen in `/figma` and read it fully, plus the matching PNG.
2. Use the `.dart` file as the exact source for sizes, spacing, colors, font sizes, text content, icons and widget structure.
3. Rebuild the screen cleanly using our theme tokens (`mobile/lib/core/theme`) and shared widgets (`mobile/lib/shared/widgets`). Do NOT paste the exported code into `lib/` unchanged, do NOT import files from `/figma`, and do NOT edit files in `/figma`.
4. Replace fixed positions and fixed widths with responsive layout (`Column`, `Row`, `Expanded`, `Padding`, `SafeArea`, `SingleChildScrollView`) so the screen works on small and large phones and with the keyboard open.
5. If the `.dart` file and the PNG disagree, tell the user.
6. If a screen has no `.dart` file, tell the user and ask before using the PNG.
