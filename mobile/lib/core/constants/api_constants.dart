/// API configuration constants.
class ApiConstants {
  ApiConstants._();

  /// Base URL for the backend API.
  /// Android emulator uses 10.0.2.2 to reach host machine's localhost.
  /// Change to your machine's LAN IP for physical device testing.
  static const String baseUrl = 'http://10.0.2.2:3000';

  /// Request timeout in milliseconds.
  static const int connectTimeout = 10000;
  static const int receiveTimeout = 15000;
}
