# AppPasswordField Component
Status: DONE
Location: `/mobile/lib/shared/widgets/app_password_field.dart`

## Done

- Created `AppPasswordField` based on `AppTextField`:
  - Password masking with show/hide toggle icon (slashed eye when hidden, open eye when shown)
  - Accessibility touch target: 48dp x 48dp on the suffix toggle button
  - Matches Figma `03_login.png` visual style and error states

## Notes for the next developer
- Wraps `AppTextField` with internal visibility state toggle.
- Exposes standard callbacks and validation props.
