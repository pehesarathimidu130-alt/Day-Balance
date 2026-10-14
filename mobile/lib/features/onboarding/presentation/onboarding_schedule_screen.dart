import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import 'onboarding_controller.dart';

class OnboardingScheduleScreen extends ConsumerWidget {
  const OnboardingScheduleScreen({super.key});

  Future<void> _pickTime({
    required BuildContext context,
    required WidgetRef ref,
    required TimeOfDay initialTime,
    required void Function(TimeOfDay) onSelected,
  }) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: initialTime,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            timePickerTheme: TimePickerThemeData(
              backgroundColor: AppColors.surface,
              hourMinuteColor: AppColors.surfaceVariant,
              hourMinuteTextColor: AppColors.textPrimary,
              dialHandColor: AppColors.primary,
              dialBackgroundColor: AppColors.surfaceVariant,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      onSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingControllerProvider);
    final controller = ref.read(onboardingControllerProvider.notifier);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Step 1 of 3', style: AppTextStyles.label),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 12),
              const Text(
                'Set Your Daily Schedule',
                style: AppTextStyles.h1,
              ),
              const SizedBox(height: 8),
              const Text(
                'Tell us when your day begins and ends. We will use this to calculate your daily waking hours.',
                style: AppTextStyles.bodyMedium,
              ),
              const SizedBox(height: 32),

              // Wake Time Selector
              _TimeCard(
                title: 'Wake-up Time',
                time: state.wakeTime.format(context),
                icon: Icons.wb_sunny_rounded,
                iconColor: const Color(0xFFF39C12),
                onTap: () => _pickTime(
                  context: context,
                  ref: ref,
                  initialTime: state.wakeTime,
                  onSelected: controller.setWakeTime,
                ),
              ),
              const SizedBox(height: 16),

              // Bedtime Selector
              _TimeCard(
                title: 'Bedtime',
                time: state.bedtime.format(context),
                icon: Icons.nightlight_round,
                iconColor: const Color(0xFF5B6987),
                onTap: () => _pickTime(
                  context: context,
                  ref: ref,
                  initialTime: state.bedtime,
                  onSelected: controller.setBedtime,
                ),
              ),
              const SizedBox(height: 28),

              // Calculated Waking Hours Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primary.withValues(alpha: 0.12),
                      AppColors.primary.withValues(alpha: 0.04),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: AppColors.primary.withValues(alpha: 0.25),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Icon(
                        Icons.hourglass_top_rounded,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Estimated Waking Time',
                            style: AppTextStyles.bodySmall,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            state.grossHoursFormatted,
                            style: AppTextStyles.h2.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // Error display if any
              if (state.errorMessage != null) ...[
                Text(
                  state.errorMessage!,
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.error,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
              ],

              // Next Button
              ElevatedButton(
                onPressed: state.isLoading
                    ? null
                    : () async {
                        final ok = await controller.saveSchedule();
                        if (ok && context.mounted) {
                          context.go('/onboarding/routine');
                        }
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.textOnPrimary,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 2,
                ),
                child: state.isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.5,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      )
                    : const Text('Next: Daily Routine', style: AppTextStyles.button),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class _TimeCard extends StatelessWidget {
  final String title;
  final String time;
  final IconData icon;
  final Color iconColor;
  final VoidCallback onTap;

  const _TimeCard({
    required this.title,
    required this.time,
    required this.icon,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: iconColor, size: 24),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: AppTextStyles.bodySmall),
                    const SizedBox(height: 4),
                    Text(time, style: AppTextStyles.h3),
                  ],
                ),
              ),
              const Icon(Icons.edit_calendar_rounded, color: AppColors.textSecondary),
            ],
          ),
        ),
      ),
    );
  }
}
