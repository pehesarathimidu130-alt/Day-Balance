import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_icons.dart';

/// Clean back button with >=48dp touch target and thin arrow matching Figma.
class AppBackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? color;

  const AppBackButton({
    super.key,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: 'Back',
      child: InkWell(
        onTap: onPressed ?? () => Navigator.of(context).maybePop(),
        borderRadius: BorderRadius.circular(24),
        child: Container(
          constraints: const BoxConstraints(
            minWidth: 48,
            minHeight: 48,
          ),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 4, right: 8),
          child: Icon(
            AppIcons.back,
            size: 24,
            color: color ?? AppColors.text,
          ),
        ),
      ),
    );
  }
}
