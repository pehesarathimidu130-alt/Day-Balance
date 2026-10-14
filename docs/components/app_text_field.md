# AppTextField Component
Status: DONE
Location: `/mobile/lib/shared/widgets/app_text_field.dart`

## Done

- Created `AppTextField` matching Day-Balance Figma Style Guide:
  - Input border radius: 4dp
  - Border colors: normal `AppColors.outline` (`#85897D`), focused `AppColors.primarySage` (`#49664D`), error `AppColors.error` (`#A43B32`)
  - Floating label cut into outline border: `AppTextStyles.caption12`
  - Input text: `AppTextStyles.body14`
  - Height / Content padding: 56dp height with 16dp horizontal padding
  - Inline error text support rendered below field with `AppTextStyles.error`
  - Disabled state support when forms are submitting

## Notes for the next developer
- Standard text input widget for all forms in the application.
- Supports controllers, focus nodes, input types, and action buttons.
