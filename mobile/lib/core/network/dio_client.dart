import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../constants/api_constants.dart';

/// Creates and configures the Dio HTTP client with token interceptor.
Dio createDioClient() {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(milliseconds: ApiConstants.connectTimeout),
      receiveTimeout:
          const Duration(milliseconds: ApiConstants.receiveTimeout),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  dio.interceptors.add(AuthInterceptor(dio));

  return dio;
}

/// Interceptor that attaches the JWT access token to every request
/// and handles 401 errors by refreshing the token.
class AuthInterceptor extends Interceptor {
  final Dio _dio;
  static const _storage = FlutterSecureStorage();
  static const _accessTokenKey = 'access_token';
  static const _refreshTokenKey = 'refresh_token';

  AuthInterceptor(this._dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _storage.read(key: _accessTokenKey);
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 &&
        err.requestOptions.path != '/api/auth/refresh' &&
        err.requestOptions.path != '/api/auth/login') {
      final refreshToken = await _storage.read(key: _refreshTokenKey);
      if (refreshToken != null) {
        try {
          final refreshDio = Dio(BaseOptions(
            baseUrl: _dio.options.baseUrl,
            connectTimeout: _dio.options.connectTimeout,
            receiveTimeout: _dio.options.receiveTimeout,
          ));
          final response = await refreshDio.post(
            '/api/auth/refresh',
            data: {'refreshToken': refreshToken},
          );
          final data = response.data['data'] as Map<String, dynamic>;
          final tokens = data['tokens'] as Map<String, dynamic>;
          final newAccessToken = tokens['accessToken'] as String;
          final newRefreshToken = tokens['refreshToken'] as String;

          await saveTokens(
            accessToken: newAccessToken,
            refreshToken: newRefreshToken,
          );

          final options = err.requestOptions;
          options.headers['Authorization'] = 'Bearer $newAccessToken';
          final responseRetry = await _dio.fetch(options);
          handler.resolve(responseRetry);
          return;
        } catch (_) {
          await clearTokens();
        }
      }
    }
    handler.next(err);
  }

  /// Save tokens to secure storage after login/register.
  static Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await _storage.write(key: _accessTokenKey, value: accessToken);
    await _storage.write(key: _refreshTokenKey, value: refreshToken);
  }

  /// Clear tokens on logout.
  static Future<void> clearTokens() async {
    await _storage.delete(key: _accessTokenKey);
    await _storage.delete(key: _refreshTokenKey);
  }

  /// Read the current access token (e.g., to check if logged in).
  static Future<String?> getAccessToken() async {
    return _storage.read(key: _accessTokenKey);
  }
}
