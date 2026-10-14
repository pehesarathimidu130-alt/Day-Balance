import 'package:flutter_test/flutter_test.dart';
import 'package:day_balance/features/onboarding/presentation/setting_up_constants.dart';

void main() {
  group('SettingUpTexts unit tests', () {
    test('personalWakingHours formats correctly', () {
      expect(SettingUpTexts.personalWakingHours(16), "You're awake about 16 hours a day.");
      expect(SettingUpTexts.personalWakingHours(14), "You're awake about 14 hours a day.");
    });

    test('socialProof formats correctly when honest count is provided', () {
      expect(SettingUpTexts.socialProof(35), '35 people have a routine like yours.');
    });

    test('buildTextSequence with showable=true and similarCount >= 25 includes honest count', () {
      final lines = SettingUpTexts.buildTextSequence(
        grossWakingMinutes: 960, // 16 hours
        showable: true,
        similarCount: 28,
      );

      expect(lines.first, SettingUpTexts.readingRhythm);
      expect(lines[1], "You're awake about 16 hours a day.");
      expect(lines[2], '28 people have a routine like yours.');
      expect(lines.contains('Folding your hours into tidy piles...'), isTrue);
      expect(lines.contains('Teaching the clock to relax...'), isTrue);
      expect(lines.contains('Making room for the good stuff...'), isTrue);
      expect(lines[lines.length - 2], SettingUpTexts.settingUp);
      expect(lines.last, SettingUpTexts.allSet);
    });

    test('buildTextSequence with showable=false uses warm fallback and reveals no number', () {
      final lines = SettingUpTexts.buildTextSequence(
        grossWakingMinutes: 900, // 15 hours
        showable: false,
        similarCount: null,
      );

      expect(lines[1], "You're awake about 15 hours a day.");
      expect(lines[2], SettingUpTexts.socialProofFallback);
      expect(lines[2], 'Every plan leaves room for life.');
      // Verify no leaked digits in fallback line
      expect(RegExp(r'\d+').hasMatch(lines[2]), isFalse);
    });

    test('buildTextSequence with similarCount < 25 enforces privacy fallback', () {
      final lines = SettingUpTexts.buildTextSequence(
        grossWakingMinutes: 840, // 14 hours
        showable: false,
        similarCount: 12, // Even if caller has 12, showable=false forces fallback
      );

      expect(lines[2], SettingUpTexts.socialProofFallback);
      expect(lines[2], 'Every plan leaves room for life.');
    });
  });
}
