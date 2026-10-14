import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../onboarding/data/onboarding_repository.dart';
import '../data/plans_repository.dart';

class PlanState {
  final int wakingSeconds;
  final Map<String, int> plannedSeconds; // categoryId -> plannedSeconds
  final String? existingPlanId;
  final bool isLoading;
  final String? errorMessage;

  const PlanState({
    this.wakingSeconds = 16 * 3600, // default 16 hours
    this.plannedSeconds = const {},
    this.existingPlanId,
    this.isLoading = false,
    this.errorMessage,
  });

  int get totalPlannedSeconds {
    return plannedSeconds.values.fold(0, (sum, val) => sum + val);
  }

  int get secondsLeftToPlan {
    return max(0, wakingSeconds - totalPlannedSeconds);
  }

  double get entertainmentRatio {
    if (wakingSeconds <= 0) return 0.0;
    final entSec = plannedSeconds['entertainment'] ?? 0;
    return entSec / wakingSeconds;
  }

  bool get hasEntertainmentWarning => entertainmentRatio > 0.30;

  String formatSeconds(int totalSec) {
    final h = totalSec ~/ 3600;
    final m = (totalSec % 3600) ~/ 60;
    if (h > 0 && m > 0) return '${h}h ${m}m';
    if (h > 0) return '${h}h';
    return '${m}m';
  }

  PlanState copyWith({
    int? wakingSeconds,
    Map<String, int>? plannedSeconds,
    String? existingPlanId,
    bool? isLoading,
    String? errorMessage,
    bool clearError = false,
  }) {
    return PlanState(
      wakingSeconds: wakingSeconds ?? this.wakingSeconds,
      plannedSeconds: plannedSeconds ?? this.plannedSeconds,
      existingPlanId: existingPlanId ?? this.existingPlanId,
      isLoading: isLoading ?? this.isLoading,
      errorMessage:
          clearError ? null : (errorMessage ?? this.errorMessage),
    );
  }
}

class PlanController extends Notifier<PlanState> {
  static const int stepSeconds = 1800; // 30 minutes

  @override
  PlanState build() => const PlanState();

  Future<void> initPlanForToday() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final onboardingRepo = ref.read(onboardingRepositoryProvider);
      final plansRepo = ref.read(plansRepositoryProvider);

      final user = await onboardingRepo.getProfile();
      final userCategories = await onboardingRepo.getUserCategories();

      // Calculate waking seconds from profile
      int wakingSec = 16 * 3600; // fallback
      if (user.wakeTime != null && user.bedtime != null) {
        final wakeParts = user.wakeTime!.split(':');
        final bedParts = user.bedtime!.split(':');
        int wakeMin = int.parse(wakeParts[0]) * 60 + int.parse(wakeParts[1]);
        int bedMin = int.parse(bedParts[0]) * 60 + int.parse(bedParts[1]);
        if (bedMin <= wakeMin) bedMin += 24 * 60;
        final routineMin = user.routineMinutes ?? 0;
        final netMin = max(60, (bedMin - wakeMin) - routineMin);
        wakingSec = netMin * 60;
      }

      // Check if plan already exists for today
      final todayStr = DateFormat('yyyy-MM-dd').format(DateTime.now());
      final existingPlan = await plansRepo.getTodayPlan(todayStr);

      final map = <String, int>{};
      // Prepopulate with user's selected categories
      for (final catId in userCategories) {
        map[catId] = 0;
      }

      String? planId;
      if (existingPlan != null) {
        planId = existingPlan.id;
        wakingSec = existingPlan.wakingSeconds;
        for (final item in existingPlan.items) {
          map[item.categoryId] = item.plannedSeconds;
        }
      }

      state = state.copyWith(
        wakingSeconds: wakingSec,
        plannedSeconds: map,
        existingPlanId: planId,
        isLoading: false,
      );
    } catch (e) {
      final msg = e.toString().replaceFirst('Exception: ', '');
      state = state.copyWith(isLoading: false, errorMessage: msg);
    }
  }

  void incrementCategory(String categoryId) {
    if (state.secondsLeftToPlan < stepSeconds) return;

    final updated = Map<String, int>.from(state.plannedSeconds);
    updated[categoryId] = (updated[categoryId] ?? 0) + stepSeconds;
    state = state.copyWith(plannedSeconds: updated, clearError: true);
  }

  void decrementCategory(String categoryId) {
    final current = state.plannedSeconds[categoryId] ?? 0;
    if (current < stepSeconds) return;

    final updated = Map<String, int>.from(state.plannedSeconds);
    updated[categoryId] = current - stepSeconds;
    state = state.copyWith(plannedSeconds: updated, clearError: true);
  }

  Future<bool> savePlan() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final plansRepo = ref.read(plansRepositoryProvider);
      final todayStr = DateFormat('yyyy-MM-dd').format(DateTime.now());

      final itemsPayload = state.plannedSeconds.entries
          .where((entry) => entry.value > 0)
          .map((entry) => {
                'categoryId': entry.key,
                'plannedSeconds': entry.value,
              })
          .toList();

      if (itemsPayload.isEmpty) {
        state = state.copyWith(
          isLoading: false,
          errorMessage: 'Assign time to at least one category to start your day',
        );
        return false;
      }

      if (state.existingPlanId != null) {
        await plansRepo.updatePlan(
          planId: state.existingPlanId!,
          wakingSeconds: state.wakingSeconds,
          items: itemsPayload,
        );
      } else {
        await plansRepo.createPlan(
          planDate: todayStr,
          wakingSeconds: state.wakingSeconds,
          items: itemsPayload,
        );
      }

      state = state.copyWith(isLoading: false);
      return true;
    } catch (e) {
      final msg = e.toString().replaceFirst('Exception: ', '');
      state = state.copyWith(isLoading: false, errorMessage: msg);
      return false;
    }
  }
}

final planControllerProvider =
    NotifierProvider<PlanController, PlanState>(PlanController.new);
