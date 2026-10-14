import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/widgets/day_balance_logo.dart';
import '../../../shared/widgets/primary_button.dart';
import '../../../shared/widgets/secondary_button.dart';

/// Welcome / Onboarding Landing Screen strictly matching Figma _01_welcome.dart and 01_welcome.png.
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.canvas,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 28.0,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight - 56.0,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header: Logo + App Name
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const DayBalanceLogo(size: 32),
                          const SizedBox(width: 8),
                          Text(
                            'Day-Balance',
                            style: AppTextStyles.title.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.text,
                            ),
                          ),
                        ],
                      ),
                      // 32dp spacing matching _01_welcome.dart line 72
                      const SizedBox(height: 32),

                      // Display Title: "Make room\nfor your day." (40sp)
                      Text(
                        'Make room\nfor your day.',
                        style: AppTextStyles.display,
                      ),
                      // 16dp spacing matching _01_welcome.dart line 104
                      const SizedBox(height: 16),

                      // Subtitle: "Plan your hours. Do one thing at a time.\nLeave room for life." (16sp)
                      Text(
                        'Plan your hours. Do one thing at a time.\nLeave room for life.',
                        style: AppTextStyles.body16,
                      ),

                      // Responsive spacer before the visual illustration
                      const Spacer(),
                      const SizedBox(height: 32),

                      // Visual Illustration Card Stack matching _01_welcome.dart lines 132-301
                      const _WelcomeIllustrationCard(),

                      // Responsive spacer before action buttons
                      const Spacer(),
                      const SizedBox(height: 32),

                      // Primary Button: "Get started" -> routes to /register
                      AppPrimaryButton(
                        text: 'Get started',
                        onPressed: () {
                          context.go('/register');
                        },
                      ),
                      // 8dp spacing matching _01_welcome.dart line 321
                      const SizedBox(height: 8),

                      // Secondary Button: "Log in" -> routes to /login
                      AppSecondaryButton(
                        text: 'Log in',
                        onPressed: () {
                          context.go('/login');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

/// Visual preview card stack matching Figma _01_welcome.dart lines 132-301.
/// Displays a peeking rising sun, warm sand background card, and foreground card
/// containing the 3 sample category pills (Academic 3 h, Life/Family 2 h, Rest/Recovery 1 h).
class _WelcomeIllustrationCard extends StatelessWidget {
  const _WelcomeIllustrationCard();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background sand card (Color(0xFFEEE8DC), radius 16)
          Padding(
            padding: const EdgeInsets.only(top: 46, left: 5, right: 5),
            child: Container(
              height: 166,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFFEEE8DC),
              ),
            ),
          ),

          // Peeking rising sun graphic (top right, 100x86)
          const Positioned(
            top: 0,
            right: 8,
            width: 100,
            height: 86,
            child: _PeekingSun(),
          ),

          // Foreground warm white card (Color(0xFFFFFCF7), radius 16)
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFFFFFCF7),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0A000000),
                    blurRadius: 16,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  _CategoryPreviewPill(
                    name: 'Academic',
                    hours: '3 h',
                    color: AppColors.academic, // Color(0xFFD4DEE5)
                  ),
                  SizedBox(height: 8),
                  _CategoryPreviewPill(
                    name: 'Life/Family',
                    hours: '2 h',
                    color: AppColors.lifeFamily, // Color(0xFFEBD3BC)
                  ),
                  SizedBox(height: 8),
                  _CategoryPreviewPill(
                    name: 'Rest/Recovery',
                    hours: '1 h',
                    color: AppColors.rest, // Color(0xFFE9CFCE)
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Category pill inside the welcome preview card matching Figma _01_welcome.dart.
class _CategoryPreviewPill extends StatelessWidget {
  final String name;
  final String hours;
  final Color color;

  const _CategoryPreviewPill({
    required this.name,
    required this.hours,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 9,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: AppColors.text,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto',
            ),
          ),
          Text(
            hours,
            style: const TextStyle(
              color: AppColors.text,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto',
            ),
          ),
        ],
      ),
    );
  }
}

/// Peeking sun motif in the welcome illustration matching 01_welcome.png.
class _PeekingSun extends StatelessWidget {
  const _PeekingSun();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _PeekingSunPainter(),
    );
  }
}

class _PeekingSunPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width * 0.52;
    final cy = size.height;
    final radius = size.width * 0.38;

    // Sun dome fill (#E2CDAA)
    final domePaint = Paint()
      ..color = const Color(0xFFE2CDAA)
      ..style = PaintingStyle.fill;

    final domeRect = Rect.fromCircle(center: Offset(cx, cy), radius: radius);
    canvas.drawArc(domeRect, math.pi, math.pi, true, domePaint);

    // Three rays (#49664D)
    final rayPaint = Paint()
      ..color = AppColors.primarySage
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5
      ..strokeCap = StrokeCap.round;

    final rayGap = 5.0;
    final rayLength = 16.0;

    // Center ray (vertical)
    canvas.drawLine(
      Offset(cx, cy - radius - rayGap),
      Offset(cx, cy - radius - rayGap - rayLength),
      rayPaint,
    );

    // Left ray (-45 degrees)
    const angleLeft = -3.0 * math.pi / 4.0;
    final lx1 = cx + (radius + rayGap) * math.cos(angleLeft);
    final ly1 = cy + (radius + rayGap) * math.sin(angleLeft);
    final lx2 = cx + (radius + rayGap + rayLength) * math.cos(angleLeft);
    final ly2 = cy + (radius + rayGap + rayLength) * math.sin(angleLeft);
    canvas.drawLine(Offset(lx1, ly1), Offset(lx2, ly2), rayPaint);

    // Right ray (+45 degrees)
    const angleRight = -math.pi / 4.0;
    final rx1 = cx + (radius + rayGap) * math.cos(angleRight);
    final ry1 = cy + (radius + rayGap) * math.sin(angleRight);
    final rx2 = cx + (radius + rayGap + rayLength) * math.cos(angleRight);
    final ry2 = cy + (radius + rayGap + rayLength) * math.sin(angleRight);
    canvas.drawLine(Offset(rx1, ry1), Offset(rx2, ry2), rayPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
