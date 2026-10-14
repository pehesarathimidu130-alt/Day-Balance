import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:day_balance/features/onboarding/presentation/onboarding_controller.dart';

void main() {
  group('Routine Calculations and Constraints', () {
    test('Default routines equal 90 minutes (45m morning + 45m wind-up)', () {
      const state = OnboardingState();
      expect(state.morningRoutineMinutes, 45);
      expect(state.windUpRoutineMinutes, 45);
      expect(state.routineMinutes, 90);
    });

    test('Net hours formatted correctly reflects routine deductions', () {
      const state = OnboardingState(
        wakeTime: TimeOfDay(hour: 7, minute: 0),
        bedtime: TimeOfDay(hour: 23, minute: 0), // 16h = 960m
        morningRoutineMinutes: 45,
        windUpRoutineMinutes: 45, // Total 90m
      );

      expect(state.grossHoursFormatted, '16h 00m');
      expect(state.netHoursFormatted, '14h 30m');
    });

    test('Routine cannot exceed gross waking hours', () {
      final container = ProviderContainer();
      final controller = container.read(onboardingControllerProvider.notifier);

      // Total waking minutes = 16h = 960m
      // Try setting morning routine to 1000m
      controller.setMorningRoutineMinutes(1000);
      final state = container.read(onboardingControllerProvider);
      expect(state.morningRoutineMinutes, 960 - 45);
      expect(state.netAvailableMinutes, 0);
    });
  });
}
