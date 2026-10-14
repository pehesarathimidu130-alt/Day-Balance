import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:day_balance/features/onboarding/presentation/onboarding_controller.dart';

void main() {
  group('OnboardingSchedule Calculations', () {
    test('Standard day (7:00 AM to 11:00 PM) calculates 16h awake and 8h sleep', () {
      const state = OnboardingState(
        wakeTime: TimeOfDay(hour: 7, minute: 0),
        bedtime: TimeOfDay(hour: 23, minute: 0),
      );

      expect(state.grossWakingMinutes, 16 * 60);
      expect(state.sleepMinutes, 8 * 60);
      expect(state.grossHoursFormatted, '16h 00m');
      expect(state.awakeRangeFormatted, '7 AM — 11 PM awake · 8 hours of sleep');
    });

    test('Midnight crossing (7:00 AM to 1:00 AM) calculates 18h awake and 6h sleep', () {
      const state = OnboardingState(
        wakeTime: TimeOfDay(hour: 7, minute: 0),
        bedtime: TimeOfDay(hour: 1, minute: 0),
      );

      expect(state.grossWakingMinutes, 18 * 60);
      expect(state.sleepMinutes, 6 * 60);
      expect(state.grossHoursFormatted, '18h 00m');
      expect(state.awakeRangeFormatted, '7 AM — 1 AM awake · 6 hours of sleep');
    });

    test('Partial hours (8:30 AM to 2:15 AM) calculates accurately', () {
      const state = OnboardingState(
        wakeTime: TimeOfDay(hour: 8, minute: 30),
        bedtime: TimeOfDay(hour: 2, minute: 15),
      );

      // 8:30 AM (510m) to 2:15 AM next day (1440 + 135 = 1575m) -> 1065m = 17h 45m
      expect(state.grossWakingMinutes, 1065);
      expect(state.sleepMinutes, 375); // 6h 15m
      expect(state.grossHoursFormatted, '17h 45m');
      expect(state.awakeRangeFormatted, '8:30 AM — 2:15 AM awake · 6 h 15 m of sleep');
    });

    test('Net available hours subtracts routines correctly', () {
      const state = OnboardingState(
        wakeTime: TimeOfDay(hour: 7, minute: 0),
        bedtime: TimeOfDay(hour: 23, minute: 0),
        morningRoutineMinutes: 45,
        windUpRoutineMinutes: 45,
      );

      expect(state.routineMinutes, 90);
      expect(state.netAvailableMinutes, (16 * 60) - 90); // 870m = 14h 30m
      expect(state.netHoursFormatted, '14h 30m');
    });
  });
}
