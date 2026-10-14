import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/network/dio_provider.dart';
import '../domain/plan_model.dart';

class PlansRepository {
  final Dio _dio;

  PlansRepository(this._dio);

  Future<DailyPlanModel> createPlan({
    required String planDate,
    required int wakingSeconds,
    required List<Map<String, dynamic>> items,
  }) async {
    try {
      final response = await _dio.post(
        '/api/plans',
        data: {
          'planDate': planDate,
          'wakingSeconds': wakingSeconds,
          'items': items,
        },
      );

      final planJson =
          response.data['data']['plan'] as Map<String, dynamic>;
      return DailyPlanModel.fromJson(planJson);
    } on DioException catch (e) {
      final msg =
          e.response?.data?['error'] ?? e.message ?? 'Failed to create plan';
      throw Exception(msg);
    }
  }

  Future<DailyPlanModel?> getTodayPlan([String? date]) async {
    try {
      final response = await _dio.get(
        '/api/plans/today',
        queryParameters: date != null ? {'date': date} : null,
      );

      final planJson = response.data['data']['plan'];
      if (planJson == null) return null;
      return DailyPlanModel.fromJson(planJson as Map<String, dynamic>);
    } on DioException catch (e) {
      final msg =
          e.response?.data?['error'] ?? e.message ?? 'Failed to load today plan';
      throw Exception(msg);
    }
  }

  Future<DailyPlanModel> getPlanById(String planId) async {
    try {
      final response = await _dio.get('/api/plans/$planId');
      final planJson =
          response.data['data']['plan'] as Map<String, dynamic>;
      return DailyPlanModel.fromJson(planJson);
    } on DioException catch (e) {
      final msg =
          e.response?.data?['error'] ?? e.message ?? 'Failed to fetch plan';
      throw Exception(msg);
    }
  }

  Future<DailyPlanModel> updatePlan({
    required String planId,
    int? wakingSeconds,
    List<Map<String, dynamic>>? items,
  }) async {
    try {
      final data = <String, dynamic>{};
      if (wakingSeconds != null) data['wakingSeconds'] = wakingSeconds;
      if (items != null) data['items'] = items;

      final response = await _dio.patch(
        '/api/plans/$planId',
        data: data,
      );

      final planJson =
          response.data['data']['plan'] as Map<String, dynamic>;
      return DailyPlanModel.fromJson(planJson);
    } on DioException catch (e) {
      final msg =
          e.response?.data?['error'] ?? e.message ?? 'Failed to update plan';
      throw Exception(msg);
    }
  }
}

final plansRepositoryProvider = Provider<PlansRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return PlansRepository(dio);
});
