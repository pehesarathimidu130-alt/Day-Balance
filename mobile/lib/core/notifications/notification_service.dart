import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static bool _initialized = false;

  static Future<void> initialize() async {
    if (_initialized) return;

    const androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    try {
      await _notificationsPlugin.initialize(initSettings);
      _initialized = true;
    } catch (_) {
      // In test environments or unsupported platforms, continue gracefully
    }
  }

  static Future<void> showOvertimeNotification({
    required String categoryName,
  }) async {
    if (!_initialized) await initialize();

    const androidDetails = AndroidNotificationDetails(
      'timer_channel',
      'Category Timer Alerts',
      channelDescription:
          'Alerts when a budgeted category timer reaches zero and enters overtime',
      importance: Importance.high,
      priority: Priority.high,
      playSound: true,
    );

    const iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    const details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    try {
      await _notificationsPlugin.show(
        categoryName.hashCode,
        'Time is up for $categoryName!',
        'You have used your budgeted time for this category and entered overtime.',
        details,
      );
    } catch (_) {
      // Gracefully handle if notifications disabled by user
    }
  }
}
