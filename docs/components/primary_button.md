# Primary Button Component
Status: DONE
Location: `/mobile/lib/shared/widgets/primary_button.dart`

## Done

- Created `AppPrimaryButton` matching Day-Balance Figma Style Guide specs:
  - Height: 48dp (minimum touch target)
  - Pill shape: radius 100 (`BorderRadius.circular(100)`)
  - Background color: `AppColors.primarySage` (`#49664D`)
  - Text style: `AppTextStyles.button` (Roboto Semibold 14/20, `#FFFFFF`)
  - Loading state: white `CircularProgressIndicator` (size 20dp, stroke 2.2) with disabled click interactions
  - Disabled state: `AppColors.disabled` background with muted text

## Notes for the next developer
- Use this as the main CTA button on all full-width action prompts.
- Handles loading and disabled states automatically.
