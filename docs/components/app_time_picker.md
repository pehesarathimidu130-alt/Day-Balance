# App Time Picker Component
Status: DONE
Location: `/mobile/lib/shared/widgets/app_time_picker.dart`

## Done

- Implemented `showAppTimePicker` bottom sheet with three scrolling wheels (Hour 1 to 12, Minute in 5-minute increments, AM/PM) using `ListWheelScrollView`.
- Styled in Day-Balance theme palette: `AppColors.canvas` background, drag handle, `AppColors.sageContainer` selection bar.
- Touch targets: >=48dp for Cancel and Done actions.
- Full mouse and touch scrolling support for web and mobile platforms.
- Completely avoids Material dial clocks and calendar icons.

## Notes for the next developer
- Call `final time = await showAppTimePicker(context: context, title: 'Wake-up time', initialTime: currentTime);`
