import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/onboarding_repository.dart';

class OnboardingState {
  final TimeOfDay wakeTime;
  final TimeOfDay bedtime;
  final int routineMinutes;
  final Set<String> selectedCategories;
  final bool isLoading;
  final String? errorMessage;

  const OnboardingState({
    this.wakeTime = const TimeOfDay(hour: 7, minute: 0),
    this.bedtime = const TimeOfDay(hour: 23, minute: 0),
    this.routineMinutes = 60,
    this.selectedCategories = const {
      'academic',
      'life_family',
      'entertainment',
      'personal_reading',
      'rest',
    },
    this.isLoading = false,
    this.errorMessage,
  });

  /// Total minutes awake between wake time and bedtime
  int get grossWakingMinutes {
    int wakeTotal = wakeTime.hour * 60 + wakeTime.minute;
    int bedTotal = bedtime.hour * 60 + bedtime.minute;
    if (bedTotal <= wakeTotal) {
      bedTotal += 24 * 60; // spans across midnight
    }
    return bedTotal - wakeTotal;
  }

  /// Net minutes available after deducting fixed daily routines
  int get netAvailableMinutes {
    return max(0, grossWakingMinutes - routineMinutes);
  }

  String get grossHoursFormatted {
    final h = grossWakingMinutes ~/ 60;
    final m = grossWakingMinutes % 60;
    return m == 0 ? '${h}h' : '${h}h ${m}m';
  }

  String get netHoursFormatted {
    final h = netAvailableMinutes ~/ 60;
    final m = netAvailableMinutes % 60;
    return m == 0 ? '${h}h' : '${h}h ${m}m';
  }

  OnboardingState copyWith({
    TimeOfDay? wakeTime,
    TimeOfDay? bedtime,
    int? routineMinutes,
    Set<String>? selectedCategories,
    bool? isLoading,
    String? errorMessage,
    bool clearError = false,
  }) {
    return OnboardingState(
      wakeTime: wakeTime ?? this.wakeTime,
      bedtime: bedtime ?? this.bedtime,
      routineMinutes: routineMinutes ?? this.routineMinutes,
      selectedCategories: selectedCategories ?? this.selectedCategories,
      isLoading: isLoading ?? this.isLoading,
      errorMessage:
          clearError ? null : (errorMessage ?? this.errorMessage),
    );
  }
}

class OnboardingController extends Notifier<OnboardingState> {
  @override
  OnboardingState build() => const OnboardingState();

  void setWakeTime(TimeOfDay time) {
    state = state.copyWith(wakeTime: time);
  }

  void setBedtime(TimeOfDay time) {
    state = state.copyWith(bedtime: time);
  }

  void setRoutineMinutes(int minutes) {
    state = state.copyWith(routineMinutes: max(0, minutes));
  }

  void toggleCategory(String categoryId) {
    final updated = Set<String>.from(state.selectedCategories);
    if (updated.contains(categoryId)) {
      if (updated.length > 1) {
        updated.remove(categoryId);
      }
    } else {
      updated.add(categoryId);
    }
    state = state.copyWith(selectedCategories: updated);
  }

  String _formatTimeOfDay(TimeOfDay t) {
    final hour = t.hour.toString().padLeft(2, '0');
    final minute = t.minute.toString().padLeft(2, '0');
    return '$hour:$minute:00';
  }

  Future<bool> saveSchedule() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final repo = ref.read(onboardingRepositoryProvider);
      await repo.updateProfile(
        wakeTime: _formatTimeOfDay(state.wakeTime),
        bedtime: _formatTimeOfDay(state.bedtime),
      );
      state = state.copyWith(isLoading: false);
      return true;
    } catch (e) {
      final msg = e.toString().replaceFirst('Exception: ', '');
      state = state.copyWith(isLoading: false, errorMessage: msg);
      return false;
    }
  }

  Future<bool> saveRoutine() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final repo = ref.read(onboardingRepositoryProvider);
      await repo.updateProfile(
        routineMinutes: state.routineMinutes,
      );
      state = state.copyWith(isLoading: false);
      return true;
    } catch (e) {
      final msg = e.toString().replaceFirst('Exception: ', '');
      state = state.copyWith(isLoading: false, errorMessage: msg);
      return false;
    }
  }

  Future<bool> completeOnboarding() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final repo = ref.read(onboardingRepositoryProvider);
      await repo.updateUserCategories(state.selectedCategories.toList());
      await repo.updateProfile(onboardingDone: true);
      state = state.copyWith(isLoading: false);
      return true;
    } catch (e) {
      final msg = e.toString().replaceFirst('Exception: ', '');
      state = state.copyWith(isLoading: false, errorMessage: msg);
      return false;
    }
  }
}

final onboardingControllerProvider =
    NotifierProvider<OnboardingController, OnboardingState>(
  OnboardingController.new,
);
