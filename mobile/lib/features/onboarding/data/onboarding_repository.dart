import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/network/dio_provider.dart';
import '../../auth/domain/user_model.dart';

class OnboardingRepository {
  final Dio _dio;

  OnboardingRepository(this._dio);

  Future<UserModel> updateProfile({
    String? wakeTime,
    String? bedtime,
    int? routineMinutes,
    bool? onboardingDone,
    String? displayName,
  }) async {
    try {
      final data = <String, dynamic>{};
      if (wakeTime != null) data['wakeTime'] = wakeTime;
      if (bedtime != null) data['bedtime'] = bedtime;
      if (routineMinutes != null) data['routineMinutes'] = routineMinutes;
      if (onboardingDone != null) data['onboardingDone'] = onboardingDone;
      if (displayName != null) data['displayName'] = displayName;

      final response = await _dio.patch(
        '/api/users/me',
        data: data,
      );

      final userJson =
          response.data['data']['user'] as Map<String, dynamic>;
      return UserModel.fromJson(userJson);
    } on DioException catch (e) {
      final msg =
          e.response?.data?['error'] ?? e.message ?? 'Failed to update profile';
      throw Exception(msg);
    }
  }

  Future<UserModel> getProfile() async {
    try {
      final response = await _dio.get('/api/users/me');
      final userJson =
          response.data['data']['user'] as Map<String, dynamic>;
      return UserModel.fromJson(userJson);
    } on DioException catch (e) {
      final msg =
          e.response?.data?['error'] ?? e.message ?? 'Failed to get profile';
      throw Exception(msg);
    }
  }

  Future<List<String>> updateUserCategories(List<String> categoryIds) async {
    try {
      final response = await _dio.put(
        '/api/categories/mine',
        data: {'categoryIds': categoryIds},
      );
      final rawList =
          response.data['data']['categories'] as List<dynamic>;
      return rawList.map((item) => item['id'] as String).toList();
    } on DioException catch (e) {
      final msg = e.response?.data?['error'] ??
          e.message ??
          'Failed to update categories';
      throw Exception(msg);
    }
  }

  Future<List<String>> getUserCategories() async {
    try {
      final response = await _dio.get('/api/categories/mine');
      final rawList =
          response.data['data']['categories'] as List<dynamic>;
      return rawList.map((item) => item['id'] as String).toList();
    } on DioException catch (e) {
      final msg = e.response?.data?['error'] ??
          e.message ??
          'Failed to fetch user categories';
      throw Exception(msg);
    }
  }
}

final onboardingRepositoryProvider = Provider<OnboardingRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return OnboardingRepository(dio);
});
