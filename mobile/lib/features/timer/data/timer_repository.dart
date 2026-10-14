import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/network/dio_provider.dart';
import '../../planning/domain/plan_model.dart';

class TimerStatusResponse {
  final String serverTime;
  final String? planId;
  final String? planDate;
  final PlanItemModel? activeItem;
  final List<PlanItemModel> items;

  const TimerStatusResponse({
    required this.serverTime,
    this.planId,
    this.planDate,
    this.activeItem,
    required this.items,
  });

  factory TimerStatusResponse.fromJson(Map<String, dynamic> json) {
    final activeItemJson = json['activeItem'];
    final itemsList = (json['items'] as List<dynamic>?) ?? [];

    return TimerStatusResponse(
      serverTime: json['serverTime'] as String,
      planId: json['planId'] as String?,
      planDate: json['planDate'] as String?,
      activeItem: activeItemJson != null
          ? PlanItemModel.fromJson(activeItemJson as Map<String, dynamic>)
          : null,
      items: itemsList
          .map((item) => PlanItemModel.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}

class TimerRepository {
  final Dio _dio;

  TimerRepository(this._dio);

  Future<PlanItemModel> startTimer(String planItemId) async {
    try {
      final response = await _dio.post(
        '/api/timer/start',
        data: {'planItemId': planItemId},
      );

      final activeItemJson =
          response.data['data']['activeItem'] as Map<String, dynamic>;
      return PlanItemModel.fromJson(activeItemJson);
    } on DioException catch (e) {
      final msg =
          e.response?.data?['error'] ?? e.message ?? 'Failed to start timer';
      throw Exception(msg);
    }
  }

  Future<PlanItemModel?> pauseTimer() async {
    try {
      final response = await _dio.post('/api/timer/pause');
      final pausedJson = response.data['data']?['pausedItem'];
      if (pausedJson == null) return null;
      return PlanItemModel.fromJson(pausedJson as Map<String, dynamic>);
    } on DioException catch (e) {
      final msg =
          e.response?.data?['error'] ?? e.message ?? 'Failed to pause timer';
      throw Exception(msg);
    }
  }

  Future<TimerStatusResponse> getStatus([String? date]) async {
    try {
      final response = await _dio.get(
        '/api/timer/status',
        queryParameters: date != null ? {'date': date} : null,
      );

      final data = response.data['data'] as Map<String, dynamic>;
      return TimerStatusResponse.fromJson(data);
    } on DioException catch (e) {
      final msg =
          e.response?.data?['error'] ?? e.message ?? 'Failed to fetch status';
      throw Exception(msg);
    }
  }
}

final timerRepositoryProvider = Provider<TimerRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return TimerRepository(dio);
});
