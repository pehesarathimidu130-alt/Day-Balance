import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import 'onboarding_controller.dart';

class OnboardingRoutineScreen extends ConsumerWidget {
  const OnboardingRoutineScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingControllerProvider);
    final controller = ref.read(onboardingControllerProvider.notifier);

    const presetMinutes = [30, 45, 60, 90, 120];

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Step 2 of 3', style: AppTextStyles.label),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
          onPressed: () => context.go('/onboarding/schedule'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 12),
              const Text(
                'Fixed Routine Time',
                style: AppTextStyles.h1,
              ),
              const SizedBox(height: 8),
              const Text(
                'How many minutes do you spend on morning prep, meals, showers, and winding down each day?',
                style: AppTextStyles.bodyMedium,
              ),
              const SizedBox(height: 28),

              // Routine Minutes Display and Adjuster
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.04),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Decrement 15 min
                        IconButton.filledTonal(
                          onPressed: state.routineMinutes > 0
                              ? () => controller.setRoutineMinutes(
                                    state.routineMinutes - 15,
                                  )
                              : null,
                          icon: const Icon(Icons.remove),
                        ),
                        Column(
                          children: [
                            Text(
                              '${state.routineMinutes}',
                              style: AppTextStyles.timerLarge.copyWith(
                                color: AppColors.primary,
                                fontSize: 42,
                              ),
                            ),
                            const Text(
                              'minutes / day',
                              style: AppTextStyles.bodySmall,
                            ),
                          ],
                        ),
                        // Increment 15 min
                        IconButton.filledTonal(
                          onPressed: state.routineMinutes < 360
                              ? () => controller.setRoutineMinutes(
                                    state.routineMinutes + 15,
                                  )
                              : null,
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Preset Quick Chips
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      alignment: WrapAlignment.center,
                      children: presetMinutes.map((mins) {
                        final isSelected = state.routineMinutes == mins;
                        return ChoiceChip(
                          label: Text('${mins}m'),
                          selected: isSelected,
                          selectedColor: AppColors.primary,
                          labelStyle: TextStyle(
                            color: isSelected
                                ? Colors.white
                                : AppColors.textPrimary,
                            fontWeight: FontWeight.w600,
                          ),
                          onSelected: (_) => controller.setRoutineMinutes(mins),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Calculation Breakdown Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.divider),
                ),
                child: Column(
                  children: [
                    _BreakdownRow(
                      label: 'Gross Waking Time',
                      value: state.grossHoursFormatted,
                    ),
                    const Divider(height: 20),
                    _BreakdownRow(
                      label: 'Routine Deductions',
                      value: '- ${state.routineMinutes}m',
                      valueColor: AppColors.warning,
                    ),
                    const Divider(height: 20),
                    _BreakdownRow(
                      label: 'Net Hours to Budget',
                      value: state.netHoursFormatted,
                      valueColor: AppColors.primary,
                      isBold: true,
                    ),
                  ],
                ),
              ),

              const Spacer(),

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
                        final ok = await controller.saveRoutine();
                        if (ok && context.mounted) {
                          context.go('/onboarding/categories');
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
                    : const Text(
                        'Next: Choose Categories',
                        style: AppTextStyles.button,
                      ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class _BreakdownRow extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;
  final bool isBold;

  const _BreakdownRow({
    required this.label,
    required this.value,
    this.valueColor,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: isBold
              ? AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.w600)
              : AppTextStyles.bodyMedium,
        ),
        Text(
          value,
          style: isBold
              ? AppTextStyles.h3.copyWith(color: valueColor)
              : AppTextStyles.bodyMedium.copyWith(
                  color: valueColor ?? AppColors.textPrimary,
                  fontWeight: FontWeight.w600,
                ),
        ),
      ],
    );
  }
}
