import 'package:flutter/foundation.dart';

/// API configuration constants.
class ApiConstants {
  ApiConstants._();

  /// Base URL for the backend API.
  ///
  /// Resolution order:
  /// 1. Compile-time `--dart-define=API_BASE_URL=...` override if provided.
  /// 2. `http://localhost:3000` on Web (`kIsWeb`).
  /// 3. `http://10.0.2.2:3000` on Android emulator (default mobile).
  ///
  /// For physical Android devices, run:
  ///   `adb reverse tcp:3000 tcp:3000`
  /// and launch with:
  ///   `flutter run --dart-define=API_BASE_URL=http://localhost:3000`
  static String get baseUrl {
    const configuredUrl = String.fromEnvironment('API_BASE_URL');
    if (configuredUrl.isNotEmpty) {
      return configuredUrl;
    }
    if (kIsWeb) {
      return 'http://localhost:3000';
    }
    return 'http://10.0.2.2:3000';
  }

  /// Request timeout in milliseconds.
  static const int connectTimeout = 10000;
  static const int receiveTimeout = 15000;
}
