import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_icons.dart';
import '../../core/theme/app_text_styles.dart';

/// Dropdown-style tap field with floating label, current value, and chevron matching Figma.
/// Opens a picker (e.g. time picker) on tap.
class TapField extends StatelessWidget {
  final String label;
  final String value;
  final VoidCallback onTap;
  final Color backgroundColor;

  const TapField({
    super.key,
    required this.label,
    required this.value,
    required this.onTap,
    this.backgroundColor = AppColors.canvas,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: '$label: $value',
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(4),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Outlined field container
            Container(
              height: 56,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.outline, width: 1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    value,
                    style: AppTextStyles.bodyLarge.copyWith(
                      color: AppColors.text,
                      fontSize: 16,
                    ),
                  ),
                  const Icon(
                    AppIcons.dropdown,
                    size: 20,
                    color: AppColors.secondary,
                  ),
                ],
              ),
            ),

            // Floating Label cut into top border
            Positioned(
              left: 12,
              top: -8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                color: backgroundColor,
                child: Text(
                  label,
                  style: AppTextStyles.labelSmall.copyWith(
                    color: AppColors.secondary,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
