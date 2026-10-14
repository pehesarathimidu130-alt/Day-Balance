# App Icons System
Status: DONE
Location: `/mobile/lib/core/theme/app_icons.dart`

## Done

- Integrated `material_symbols_icons` using the Rounded style, weight 400, outlined.
- Created `AppIcons` as the single source of truth mapping icon names to Material Symbols.
- Mapped all 7 category icons, navigation icons, stepper arrows, checkboxes, time and routine icons.
- Avoids emojis and calendar icons for time representation.

## Notes for the next developer
- Always import `AppIcons` rather than raw `Icons` or `Symbols` directly in widgets.
