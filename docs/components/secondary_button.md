# Secondary Button Component
Status: DONE
Location: `/mobile/lib/shared/widgets/secondary_button.dart`

## Done

- Created `AppSecondaryButton` matching Day-Balance Figma Style Guide specs:
  - Height: 48dp (minimum touch target)
  - Pill shape: radius 100 (`BorderRadius.circular(100)`)
  - Outline border: 1dp solid `AppColors.outline` (`#85897D`)
  - Text style: `AppTextStyles.buttonOutlined` (Roboto Semibold 14/20, `AppColors.primarySage` / `#49664D`)
  - Background: transparent
  - Disabled state: muted border and text color

## Notes for the next developer
- Used for secondary actions such as "Create an account" on login or "Cancel".
- Touch target is guaranteed to be at least 48dp.
