# Notification Service
Status: DRAFT
Location: `/mobile/lib/core/notifications/notification_service.dart`

## Summary
- Helper wrapper around `flutter_local_notifications` for category timer overtime alerts.
- Configures local notification channels for Android and iOS.
- Method `showOvertimeNotification(categoryName)` fires when category remaining seconds reaches zero.

## Notes
- **DRAFT**: Not wired into the active app flow yet (local notifications plugin initialization and channel permissions need device testing).
