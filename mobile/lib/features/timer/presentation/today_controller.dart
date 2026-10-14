import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/notifications/notification_service.dart';
import '../../planning/domain/plan_model.dart';
import '../data/timer_repository.dart';

class TodayTimerState {
  final String? planId;
  final List<PlanItemModel> items;
  final String? activeItemId;
  final DateTime? activeStartedAt;
  final int activeRemainingSeconds;
  final DateTime now;
  final bool isLoading;
  final String? errorMessage;
  final Set<String> notifiedOvertimeCategories;

  const TodayTimerState({
    this.planId,
    this.items = const [],
    this.activeItemId,
    this.activeStartedAt,
    this.activeRemainingSeconds = 0,
    required this.now,
    this.isLoading = false,
    this.errorMessage,
    this.notifiedOvertimeCategories = const {},
  });

  /// Computes the exact real-time remaining seconds for any item
  int getRemainingSecondsForItem(PlanItemModel item) {
    if (item.id == activeItemId && activeStartedAt != null) {
      final elapsed = now.difference(activeStartedAt!).inSeconds;
      return activeRemainingSeconds - elapsed;
    }
    return item.remainingSeconds;
  }

  /// Total remaining seconds across all categories for today
  int get totalRemainingSeconds {
    return items.fold(0, (sum, item) {
      final rem = getRemainingSecondsForItem(item);
      return sum + (rem > 0 ? rem : 0);
    });
  }

  /// Total planned seconds across all categories for today
  int get totalPlannedSeconds {
    return items.fold(0, (sum, item) => sum + item.plannedSeconds);
  }

  TodayTimerState copyWith({
    String? planId,
    List<PlanItemModel>? items,
    String? activeItemId,
    bool clearActiveItem = false,
    DateTime? activeStartedAt,
    int? activeRemainingSeconds,
    DateTime? now,
    bool? isLoading,
    String? errorMessage,
    bool clearError = false,
    Set<String>? notifiedOvertimeCategories,
  }) {
    return TodayTimerState(
      planId: planId ?? this.planId,
      items: items ?? this.items,
      activeItemId:
          clearActiveItem ? null : (activeItemId ?? this.activeItemId),
      activeStartedAt:
          clearActiveItem ? null : (activeStartedAt ?? this.activeStartedAt),
      activeRemainingSeconds: clearActiveItem
          ? 0
          : (activeRemainingSeconds ?? this.activeRemainingSeconds),
      now: now ?? this.now,
      isLoading: isLoading ?? this.isLoading,
      errorMessage:
          clearError ? null : (errorMessage ?? this.errorMessage),
      notifiedOvertimeCategories:
          notifiedOvertimeCategories ?? this.notifiedOvertimeCategories,
    );
  }
}

class TodayController extends Notifier<TodayTimerState> {
  Timer? _ticker;

  @override
  TodayTimerState build() {
    // Start periodic 1-second ticker for UI countdown refresh
    _startTicker();

    ref.onDispose(() {
      _ticker?.cancel();
    });

    return TodayTimerState(now: DateTime.now());
  }

  void _startTicker() {
    _ticker?.cancel();
    _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
      final newNow = DateTime.now();
      state = state.copyWith(now: newNow);
      _checkOvertimeThreshold();
    });
  }

  void _checkOvertimeThreshold() {
    if (state.activeItemId == null || state.activeStartedAt == null) return;

    final activeItem = state.items.firstWhere(
      (item) => item.id == state.activeItemId,
      orElse: () => PlanItemModel(
        id: '',
        dailyPlanId: '',
        categoryId: '',
        categoryName: '',
        categoryDescription: '',
        categoryColor: '',
        categoryIcon: '',
        plannedSeconds: 0,
        remainingSeconds: 0,
      ),
    );

    if (activeItem.id.isEmpty) return;

    final currentRemaining = state.getRemainingSecondsForItem(activeItem);

    if (currentRemaining <= 0 &&
        !state.notifiedOvertimeCategories.contains(activeItem.id)) {
      final updatedNotified =
          Set<String>.from(state.notifiedOvertimeCategories)..add(activeItem.id);
      state = state.copyWith(notifiedOvertimeCategories: updatedNotified);
      NotificationService.showOvertimeNotification(
        categoryName: activeItem.categoryName,
      );
    }
  }

  Future<void> fetchStatus() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final repo = ref.read(timerRepositoryProvider);
      final status = await repo.getStatus();

      String? activeId;
      DateTime? startedAt;
      int remSeconds = 0;

      if (status.activeItem != null) {
        activeId = status.activeItem!.id;
        startedAt = status.activeItem!.startedAt;
        remSeconds = status.activeItem!.remainingSeconds;
      }

      state = state.copyWith(
        planId: status.planId,
        items: status.items,
        activeItemId: activeId,
        clearActiveItem: activeId == null,
        activeStartedAt: startedAt,
        activeRemainingSeconds: remSeconds,
        isLoading: false,
      );
    } catch (e) {
      final msg = e.toString().replaceFirst('Exception: ', '');
      state = state.copyWith(isLoading: false, errorMessage: msg);
    }
  }

  Future<void> startTimer(String planItemId) async {
    try {
      final repo = ref.read(timerRepositoryProvider);
      final activeItem = await repo.startTimer(planItemId);

      // Re-fetch fresh list so any paused item is also updated with new remaining_seconds
      await fetchStatus();

      state = state.copyWith(
        activeItemId: activeItem.id,
        activeStartedAt: activeItem.startedAt,
        activeRemainingSeconds: activeItem.remainingSeconds,
      );
    } catch (e) {
      final msg = e.toString().replaceFirst('Exception: ', '');
      state = state.copyWith(errorMessage: msg);
    }
  }

  Future<void> pauseTimer() async {
    try {
      final repo = ref.read(timerRepositoryProvider);
      await repo.pauseTimer();

      await fetchStatus();
      state = state.copyWith(clearActiveItem: true);
    } catch (e) {
      final msg = e.toString().replaceFirst('Exception: ', '');
      state = state.copyWith(errorMessage: msg);
    }
  }
}

final todayControllerProvider =
    NotifierProvider<TodayController, TodayTimerState>(TodayController.new);
