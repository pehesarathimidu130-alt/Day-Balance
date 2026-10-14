import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_icons.dart';
import '../../core/theme/app_text_styles.dart';

/// Pill stepper widget ("< 45 min >") with 48dp touch targets on arrows,
/// matching Figma onboarding and daily planning designs.
class PillStepper extends StatelessWidget {
  final String label;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;
  final bool canDecrement;
  final bool canIncrement;

  const PillStepper({
    super.key,
    required this.label,
    required this.onDecrement,
    required this.onIncrement,
    this.canDecrement = true,
    this.canIncrement = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: AppColors.outline, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Decrement button with >=48dp touch target
          Semantics(
            button: true,
            label: 'Decrease',
            child: InkWell(
              onTap: canDecrement ? onDecrement : null,
              borderRadius: const BorderRadius.horizontal(left: Radius.circular(100)),
              child: Container(
                width: 44,
                height: 48,
                alignment: Alignment.center,
                child: Icon(
                  AppIcons.chevronLeft,
                  size: 20,
                  color: canDecrement ? AppColors.text : AppColors.disabled,
                ),
              ),
            ),
          ),

          // Value label
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              label,
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.text,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),

          // Increment button with >=48dp touch target
          Semantics(
            button: true,
            label: 'Increase',
            child: InkWell(
              onTap: canIncrement ? onIncrement : null,
              borderRadius: const BorderRadius.horizontal(right: Radius.circular(100)),
              child: Container(
                width: 44,
                height: 48,
                alignment: Alignment.center,
                child: Icon(
                  AppIcons.chevronRight,
                  size: 20,
                  color: canIncrement ? AppColors.text : AppColors.disabled,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
