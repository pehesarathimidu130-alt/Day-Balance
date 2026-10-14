import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../../core/network/dio_client.dart';
import '../../../core/network/dio_provider.dart';
import '../domain/user_model.dart';

class AuthRepository {
  final Dio _dio;
  static const _storage = FlutterSecureStorage();
  static const _refreshTokenKey = 'refresh_token';

  AuthRepository(this._dio);

  Future<UserModel> register({
    required String email,
    required String password,
    String? displayName,
  }) async {
    try {
      final response = await _dio.post(
        '/api/auth/register',
        data: {
          'email': email,
          'password': password,
          if (displayName != null && displayName.isNotEmpty)
            'displayName': displayName,
        },
      );

      final data = response.data['data'] as Map<String, dynamic>;
      final userJson = data['user'] as Map<String, dynamic>;
      final tokens = data['tokens'] as Map<String, dynamic>;

      await AuthInterceptor.saveTokens(
        accessToken: tokens['accessToken'] as String,
        refreshToken: tokens['refreshToken'] as String,
      );

      return UserModel.fromJson(userJson);
    } on DioException catch (e) {
      final message =
          e.response?.data?['error'] ?? e.message ?? 'Registration failed';
      throw Exception(message);
    }
  }

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        '/api/auth/login',
        data: {
          'email': email,
          'password': password,
        },
      );

      final data = response.data['data'] as Map<String, dynamic>;
      final userJson = data['user'] as Map<String, dynamic>;
      final tokens = data['tokens'] as Map<String, dynamic>;

      await AuthInterceptor.saveTokens(
        accessToken: tokens['accessToken'] as String,
        refreshToken: tokens['refreshToken'] as String,
      );

      return UserModel.fromJson(userJson);
    } on DioException catch (e) {
      final message =
          e.response?.data?['error'] ?? e.message ?? 'Login failed';
      throw Exception(message);
    }
  }

  Future<void> logout() async {
    try {
      final refreshToken = await _storage.read(key: _refreshTokenKey);
      if (refreshToken != null) {
        await _dio.post(
          '/api/auth/logout',
          data: {'refreshToken': refreshToken},
        );
      }
    } catch (_) {
      // Ignore network errors on logout, always clean local storage
    } finally {
      await AuthInterceptor.clearTokens();
    }
  }

  Future<void> deleteAccount() async {
    try {
      await _dio.delete('/api/auth/account');
    } finally {
      await AuthInterceptor.clearTokens();
    }
  }

  Future<bool> isAuthenticated() async {
    final token = await AuthInterceptor.getAccessToken();
    return token != null;
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return AuthRepository(dio);
});
