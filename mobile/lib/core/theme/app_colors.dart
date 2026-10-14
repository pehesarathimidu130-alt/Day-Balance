import 'package:flutter/material.dart';

/// Centralized color tokens for the Day-Balance app.
/// Replace these placeholder values with actual design tokens from Figma.
class AppColors {
  AppColors._();

  // Brand
  static const Color primary = Color(0xFF4A90D9);
  static const Color primaryLight = Color(0xFF7AB3E8);
  static const Color primaryDark = Color(0xFF2D6CB0);

  // Background
  static const Color background = Color(0xFFF5F7FA);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF0F2F5);

  // Text
  static const Color textPrimary = Color(0xFF1A1D21);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // Status
  static const Color success = Color(0xFF2ECC71);
  static const Color warning = Color(0xFFF39C12);
  static const Color error = Color(0xFFE74C3C);
  static const Color overtime = Color(0xFFE74C3C);

  // Category colors (match backend seed data)
  static const Color academic = Color(0xFF4A90D9);
  static const Color lifeFamily = Color(0xFFE67E22);
  static const Color entertainment = Color(0xFFE74C3C);
  static const Color personalReading = Color(0xFF2ECC71);
  static const Color career = Color(0xFF9B59B6);
  static const Color unplanned = Color(0xFF95A5A6);
  static const Color rest = Color(0xFF1ABC9C);

  // Misc
  static const Color divider = Color(0xFFE5E7EB);
  static const Color disabled = Color(0xFFD1D5DB);
}
