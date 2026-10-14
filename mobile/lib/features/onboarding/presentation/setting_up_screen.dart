import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/widgets/primary_button.dart';
import '../../../shared/widgets/secondary_button.dart';
import '../data/onboarding_repository.dart';
import 'onboarding_controller.dart';
import 'setting_up_constants.dart';

/// "Setting up your day" loading screen.
///
/// Coordinates:
/// 1. Calm sky cycle animation (Dawn -> Dusk/Night with twinkling stars -> Ready Sun).
/// 2. Text sequence cross-fading every 1.8 seconds with personal waking hours and honest social proof.
/// 3. Concurrent backend save of schedule, routines, categories, and onboarding_done.
/// 4. Minimum display time of ~4.5 seconds before navigating to /plan.
/// 5. Screen 16 error state on failure with retry and back buttons (preserving choices).
/// 6. Reduce-motion accessibility mode and system back button blocking (PopScope).
class SettingUpScreen extends ConsumerStatefulWidget {
  const SettingUpScreen({super.key});

  @override
  ConsumerState<SettingUpScreen> createState() => _SettingUpScreenState();
}

class _SettingUpScreenState extends ConsumerState<SettingUpScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  Timer? _textTimer;
  Timer? _minDisplayTimer;

  bool _hasError = false;
  String _errorMessage = '';

  int _currentTextIndex = 0;
  List<String> _textLines = [];

  // Honest stats response
  bool _showable = false;
  int? _similarCount;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4800),
    );

    _initTextLines();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _startAnimationAndSave();
      }
    });
  }

  void _initTextLines() {
    final state = ref.read(onboardingControllerProvider);
    _textLines = SettingUpTexts.buildTextSequence(
      grossWakingMinutes: state.grossWakingMinutes,
      showable: _showable,
      similarCount: _similarCount,
    );
  }

  void _startAnimationAndSave() {
    setState(() {
      _hasError = false;
      _errorMessage = '';
      _currentTextIndex = 0;
    });

    _animationController.reset();
    _animationController.forward();

    _startTextTimer();
    _performSaveAndFetch();
  }

  void _startTextTimer() {
    _textTimer?.cancel();
    _textTimer = Timer.periodic(const Duration(milliseconds: 1800), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      if (_hasError) {
        timer.cancel();
        return;
      }

      setState(() {
        if (_currentTextIndex < _textLines.length - 1) {
          _currentTextIndex++;
        }
      });
    });
  }

  Future<void> _performSaveAndFetch() async {
    final controller = ref.read(onboardingControllerProvider.notifier);
    final repo = ref.read(onboardingRepositoryProvider);
    final state = ref.read(onboardingControllerProvider);

    // Minimum display time timer & completer: ~4.5 seconds
    _minDisplayTimer?.cancel();
    final minCompleter = Completer<void>();
    _minDisplayTimer = Timer(const Duration(milliseconds: 4500), () {
      if (!minCompleter.isCompleted) {
        minCompleter.complete();
      }
    });

    // Fetch similar routines in parallel with <= 1.5s timeout handled by repo
    final statsFuture = repo.getSimilarRoutines().then((data) {
      if (!mounted) return;
      final showable = data['showable'] as bool? ?? false;
      final count = data['similarCount'] as int?;

      setState(() {
        _showable = showable;
        _similarCount = count;
        _textLines = SettingUpTexts.buildTextSequence(
          grossWakingMinutes: state.grossWakingMinutes,
          showable: _showable,
          similarCount: _similarCount,
        );
      });
    }).catchError((_) {
      // Graceful fallback: never throw or break
    });

    // Execute save
    final saveSuccess = await controller.completeFullOnboarding();

    if (!mounted) return;

    if (!saveSuccess) {
      // Save failed: stop animation, text timer, and cancel minDisplayTimer immediately
      _animationController.stop();
      _textTimer?.cancel();
      _minDisplayTimer?.cancel();

      final stateError = ref.read(onboardingControllerProvider).errorMessage;
      setState(() {
        _hasError = true;
        _errorMessage = stateError ?? SettingUpTexts.errorMessage;
      });
      return;
    }

    // Save succeeded: now ensure minimum display time and stats have passed
    await Future.wait([minCompleter.future, statsFuture]);

    if (!mounted) return;

    // Display the final confirmation text and route to /plan
    setState(() {
      _currentTextIndex = _textLines.length - 1; // "All set."
    });

    // Brief gentle pause on "All set." before transition
    await Future.delayed(const Duration(milliseconds: 300));
    if (mounted) {
      context.go('/plan');
    }
  }

  void _retry() {
    _startAnimationAndSave();
  }

  void _backToCategories() {
    context.go('/onboarding/categories');
  }

  @override
  void dispose() {
    _animationController.dispose();
    _textTimer?.cancel();
    _minDisplayTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.of(context).disableAnimations;

    return PopScope(
      canPop: _hasError,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop && _hasError) {
          _backToCategories();
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.canvas,
        body: SafeArea(
          child: Semantics(
            label: 'Setting up your day',
            container: true,
            child: _hasError
                ? _buildErrorView()
                : (reduceMotion ? _buildReduceMotionView() : _buildAnimatedView()),
          ),
        ),
      ),
    );
  }

  /// Screen 16 style error view: Human message, Try again CTA, Back CTA.
  Widget _buildErrorView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(flex: 1),

          // Error icon in rounded card
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: AppColors.cardWarm,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(
              Icons.cloud_off_rounded,
              size: 32,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 24),

          // Headline
          Text(
            SettingUpTexts.errorTitle,
            style: AppTextStyles.h1.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 12),

          // Human friendly error message
          Text(
            _errorMessage.isNotEmpty ? _errorMessage : SettingUpTexts.errorMessage,
            style: AppTextStyles.body14.copyWith(
              color: AppColors.textSecondary,
              height: 1.45,
            ),
          ),

          const Spacer(flex: 2),

          // Action buttons: Try again & Back (choices preserved)
          AppPrimaryButton(
            label: SettingUpTexts.tryAgainButton,
            onPressed: _retry,
          ),
          const SizedBox(height: 12),
          AppSecondaryButton(
            label: SettingUpTexts.backButton,
            onPressed: _backToCategories,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  /// Calm 60fps custom painted sky animation and cross-fading text.
  Widget _buildAnimatedView() {
    final currentText = (_currentTextIndex < _textLines.length)
        ? _textLines[_currentTextIndex]
        : SettingUpTexts.settingUp;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Sky scene animation viewport (wrapped in RepaintBoundary for 60fps performance)
            RepaintBoundary(
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return CustomPaint(
                    size: const Size(280, 200),
                    painter: SkyPainter(
                      animationValue: _animationController.value,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 36),

            // Cross-fading pacing text (excluded from screen reader spam)
            SizedBox(
              height: 48,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                transitionBuilder: (child, animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child: Semantics(
                  excludeSemantics: true,
                  key: ValueKey<String>(currentText),
                  child: Text(
                    currentText,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.body16.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Accessibility fallback for users with "reduce motion" enabled.
  Widget _buildReduceMotionView() {
    final currentText = (_currentTextIndex < _textLines.length)
        ? _textLines[_currentTextIndex]
        : SettingUpTexts.settingUp;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Static ready sun viewport
            CustomPaint(
              size: const Size(280, 200),
              painter: StaticSkyPainter(),
            ),
            const SizedBox(height: 28),

            // Simple progress indicator
            const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2.2,
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.primarySage),
              ),
            ),
            const SizedBox(height: 28),

            // Static text without motion
            Semantics(
              excludeSemantics: true,
              child: Text(
                currentText,
                textAlign: TextAlign.center,
                style: AppTextStyles.body16.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// CustomPainter that renders the calm sky scene sequence:
/// Dawn -> Dusk/Night with twinkling stars -> Final sunrise settling into ready frame.
class SkyPainter extends CustomPainter {
  final double animationValue;

  SkyPainter({required this.animationValue});

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;
    final horizonY = h * 0.72;

    // 1. Clip to smooth rounded container
    final rect = Rect.fromLTWH(0, 0, w, h);
    final rrect = RRect.fromRectAndRadius(rect, const Radius.circular(24));
    canvas.clipRRect(rrect);

    // 2. Interpolate sky background color across phases
    final skyColor = _calculateSkyColor(animationValue);
    final skyPaint = Paint()..color = skyColor;
    canvas.drawRect(Rect.fromLTWH(0, 0, w, horizonY), skyPaint);

    // Subtle ground tint beneath horizon
    final groundPaint = Paint()..color = AppColors.canvas;
    canvas.drawRect(Rect.fromLTWH(0, horizonY, w, h - horizonY), groundPaint);

    // 3. Draw Stars if in dusk/night phase (t in 0.42..0.76)
    if (animationValue >= 0.42 && animationValue <= 0.76) {
      _drawStars(canvas, size, animationValue);
    }

    // 4. Draw Sun 1 (Dawn -> Arc -> Dusk)
    if (animationValue < 0.42) {
      final p = (animationValue / 0.42).clamp(0.0, 1.0);
      final curvedP = Curves.easeInOut.transform(p);
      final sunX = w * (0.12 + 0.76 * curvedP);
      final sunY = horizonY - sin(curvedP * pi) * (horizonY * 0.78);

      _drawSun(canvas, Offset(sunX, sunY), AppColors.sunWarm, 18.0);
    }

    // 5. Draw Moon (Dusk -> Night arc)
    if (animationValue >= 0.42 && animationValue < 0.75) {
      final p = ((animationValue - 0.42) / 0.33).clamp(0.0, 1.0);
      final curvedP = Curves.easeInOut.transform(p);
      final moonX = w * (0.12 + 0.76 * curvedP);
      final moonY = horizonY - sin(curvedP * pi) * (horizonY * 0.72);

      _drawMoon(canvas, Offset(moonX, moonY), 15.0);
    }

    // 6. Draw Sun 2 (Second Sunrise & Ready Frame)
    if (animationValue >= 0.75) {
      final p = ((animationValue - 0.75) / 0.25).clamp(0.0, 1.0);
      final curvedP = Curves.easeOutCubic.transform(p);
      final sunX = w * 0.50;
      final sunY = horizonY - curvedP * (horizonY - h * 0.35);

      final color = Color.lerp(AppColors.sunWarm, AppColors.sunReady, curvedP)!;
      _drawSun(canvas, Offset(sunX, sunY), color, 20.0, isReady: curvedP > 0.85);
    }

    // 7. Soft Horizon Line
    final horizonPaint = Paint()
      ..color = AppColors.horizonLine
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;
    canvas.drawLine(Offset(0, horizonY), Offset(w, horizonY), horizonPaint);
  }

  Color _calculateSkyColor(double t) {
    if (t < 0.18) {
      return Color.lerp(AppColors.skyDawn, AppColors.skyDay, t / 0.18)!;
    } else if (t < 0.35) {
      return AppColors.skyDay;
    } else if (t < 0.44) {
      final p = (t - 0.35) / 0.09;
      return Color.lerp(AppColors.skyDay, AppColors.skyDusk, p)!;
    } else if (t < 0.52) {
      final p = (t - 0.44) / 0.08;
      return Color.lerp(AppColors.skyDusk, AppColors.skyNight, p)!;
    } else if (t < 0.68) {
      return AppColors.skyNight;
    } else if (t < 0.76) {
      final p = (t - 0.68) / 0.08;
      return Color.lerp(AppColors.skyNight, AppColors.skyDawn, p)!;
    } else {
      final p = ((t - 0.76) / 0.24).clamp(0.0, 1.0);
      return Color.lerp(AppColors.skyDawn, AppColors.canvas, p)!;
    }
  }

  void _drawStars(Canvas canvas, Size size, double t) {
    final starCoords = [
      Offset(size.width * 0.20, size.height * 0.25),
      Offset(size.width * 0.35, size.height * 0.16),
      Offset(size.width * 0.62, size.height * 0.20),
      Offset(size.width * 0.78, size.height * 0.32),
      Offset(size.width * 0.48, size.height * 0.38),
      Offset(size.width * 0.84, size.height * 0.18),
    ];

    double baseOpacity = 1.0;
    if (t < 0.50) {
      baseOpacity = ((t - 0.42) / 0.08).clamp(0.0, 1.0);
    } else if (t > 0.68) {
      baseOpacity = (1.0 - (t - 0.68) / 0.08).clamp(0.0, 1.0);
    }

    for (int i = 0; i < starCoords.length; i++) {
      final twinkle = (0.6 + 0.4 * sin(t * 30.0 + i * 1.5)).clamp(0.0, 1.0);
      final paint = Paint()
        ..color = AppColors.starGlow.withValues(alpha: baseOpacity * twinkle);
      final radius = (i % 2 == 0) ? 1.8 : 1.2;
      canvas.drawCircle(starCoords[i], radius, paint);
    }
  }

  void _drawSun(
    Canvas canvas,
    Offset center,
    Color color,
    double radius, {
    bool isReady = false,
  }) {
    // Soft outer glow
    final glowPaint = Paint()
      ..color = color.withValues(alpha: isReady ? 0.25 : 0.20)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 12);
    canvas.drawCircle(center, radius + 8, glowPaint);

    // Concentric calm ring for ready frame
    if (isReady) {
      final ringPaint = Paint()
        ..color = color.withValues(alpha: 0.35)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5;
      canvas.drawCircle(center, radius + 10, ringPaint);
    }

    // Core
    final corePaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, corePaint);
  }

  void _drawMoon(Canvas canvas, Offset center, double radius) {
    // Subtle outer glow
    final glowPaint = Paint()
      ..color = AppColors.moonGlow.withValues(alpha: 0.20)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);
    canvas.drawCircle(center, radius + 6, glowPaint);

    // Moon core
    final moonPaint = Paint()..color = AppColors.moonGlow;
    canvas.drawCircle(center, radius, moonPaint);

    // Crescent shadow
    final shadowPaint = Paint()..color = AppColors.skyNight.withValues(alpha: 0.65);
    canvas.drawCircle(
      center.translate(radius * 0.45, -radius * 0.15),
      radius * 0.85,
      shadowPaint,
    );
  }

  @override
  bool shouldRepaint(covariant SkyPainter oldDelegate) {
    return oldDelegate.animationValue != animationValue;
  }
}

/// Static sky painter for reduce-motion mode.
class StaticSkyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;
    final horizonY = h * 0.72;

    final rect = Rect.fromLTWH(0, 0, w, h);
    final rrect = RRect.fromRectAndRadius(rect, const Radius.circular(24));
    canvas.clipRRect(rrect);

    // Clean background
    final skyPaint = Paint()..color = AppColors.canvas;
    canvas.drawRect(Rect.fromLTWH(0, 0, w, h), skyPaint);

    // Horizon line
    final horizonPaint = Paint()
      ..color = AppColors.horizonLine
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;
    canvas.drawLine(Offset(0, horizonY), Offset(w, horizonY), horizonPaint);

    // Static settled ready sun
    final sunCenter = Offset(w * 0.50, h * 0.35);
    final color = AppColors.sunReady;

    final glowPaint = Paint()
      ..color = color.withValues(alpha: 0.25)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 12);
    canvas.drawCircle(sunCenter, 28, glowPaint);

    final ringPaint = Paint()
      ..color = color.withValues(alpha: 0.35)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;
    canvas.drawCircle(sunCenter, 30, ringPaint);

    final corePaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    canvas.drawCircle(sunCenter, 20, corePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
