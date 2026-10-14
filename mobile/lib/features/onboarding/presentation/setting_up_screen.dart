import 'dart:async';
import 'dart:math' as math;
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

// ─── Phase data ──────────────────────────────────────────────────────────────

class _Phase {
  final String title;
  final String subtitle;
  final int step; // 0-3 matches step indicators

  const _Phase({
    required this.title,
    required this.subtitle,
    required this.step,
  });
}

const List<_Phase> _kPhases = [
  _Phase(
    title: 'Reading your rhythm...',
    subtitle: "You're awake about 16 hours a day.",
    step: 0,
  ),
  _Phase(
    title: 'Folding your hours...',
    subtitle: 'Organizing focused deep blocks and flexible recovery.',
    step: 1,
  ),
  _Phase(
    title: 'Teaching the clock to relax...',
    subtitle: 'Adding grace periods between commitments.',
    step: 2,
  ),
  _Phase(
    title: 'Making room for the good stuff...',
    subtitle: 'Carving protected windows for non-work living.',
    step: 3,
  ),
  _Phase(
    title: 'All set.',
    subtitle: 'Your Day-Balance canvas is ready.',
    step: 4, // past last step = all done
  ),
];

// ─── Screen ───────────────────────────────────────────────────────────────────

/// Animated "Setting up your day" loading screen.
///
/// Flow: Plan → SettingUp → Home
///
/// Features:
/// • Diurnal sky gradient animation (dawn → day → sunset → night → dawn loop).
/// • Sun + moon parabolic arc orbit.
/// • Twinkling star layer during night phase.
/// • Rolling dune SVG horizon.
/// • 4-step sequenced indicator list.
/// • Progress bar + rotating text/subtitle.
/// • Concurrent backend save (completeFullOnboarding).
/// • Delayed "Continue" button: appears after 2 s, grey (disabled) while
///   save is in progress, then turns primary color when ready.
/// • Error state (screen 16) with retry + back.
/// • Reduce-motion accessibility fallback.
class SettingUpScreen extends ConsumerStatefulWidget {
  const SettingUpScreen({super.key});

  @override
  ConsumerState<SettingUpScreen> createState() => _SettingUpScreenState();
}

class _SettingUpScreenState extends ConsumerState<SettingUpScreen>
    with TickerProviderStateMixin {
  // Sky animation: 10-second looping cycle
  late final AnimationController _skyController;

  // Phase step timer (2 s between phases)
  Timer? _phaseTimer;

  // State
  int _phaseIndex = 0;
  bool _showText = true; // cross-fade flag
  bool _hasError = false;
  String _errorMessage = '';

  // Backend save state
  bool _saveSuccess = false;

  // "Continue" button visibility (appears after 2 s)
  bool _showContinueButton = false;
  Timer? _continueButtonTimer;

  // Minimum display guardrail (4.5 s)
  Completer<void>? _minCompleter;
  Timer? _minTimer;

  @override
  void initState() {
    super.initState();

    _skyController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _startFlow();
    });
  }

  void _startFlow() {
    setState(() {
      _hasError = false;
      _errorMessage = '';
      _phaseIndex = 0;
      _saveSuccess = false;
      _showContinueButton = false;
    });

    _skyController.repeat();
    _startPhaseTimer();
    _scheduleContinueButton();
    _performSave();
  }

  void _startPhaseTimer() {
    _phaseTimer?.cancel();
    _phaseTimer = Timer.periodic(const Duration(milliseconds: 2000), (t) {
      if (!mounted || _hasError) {
        t.cancel();
        return;
      }
      if (_phaseIndex < _kPhases.length - 2) {
        // cross-fade
        setState(() => _showText = false);
        Future.delayed(const Duration(milliseconds: 150), () {
          if (!mounted) return;
          setState(() {
            _phaseIndex++;
            _showText = true;
          });
        });
      } else {
        t.cancel();
      }
    });
  }

  void _scheduleContinueButton() {
    _continueButtonTimer?.cancel();
    _continueButtonTimer = Timer(const Duration(seconds: 2), () {
      if (!mounted) return;
      setState(() => _showContinueButton = true);
    });
  }

  Future<void> _performSave() async {
    final controller = ref.read(onboardingControllerProvider.notifier);
    final repo = ref.read(onboardingRepositoryProvider);

    // Minimum display time
    _minCompleter = Completer<void>();
    _minTimer?.cancel();
    _minTimer = Timer(const Duration(milliseconds: 4500), () {
      if (!(_minCompleter?.isCompleted ?? true)) {
        _minCompleter!.complete();
      }
    });

    // Fetch similar routines in parallel (fire-and-forget, non-critical)
    repo.getSimilarRoutines().then((_) {}).catchError((_) {});

    // Execute the main save
    final ok = await controller.completeFullOnboarding();

    if (!mounted) return;

    if (!ok) {
      _phaseTimer?.cancel();
      _continueButtonTimer?.cancel();
      _minTimer?.cancel();
      final errMsg = ref.read(onboardingControllerProvider).errorMessage;
      setState(() {
        _hasError = true;
        _errorMessage = errMsg ?? SettingUpTexts.errorMessage;
      });
      return;
    }

    // Save done — update subtitle to use real waking hours (logged for future use)

    // Advance to last text phase
    await _minCompleter!.future;
    if (!mounted) return;

    setState(() {
      _saveSuccess = true;
      _phaseIndex = _kPhases.length - 1; // "All set."
      _showText = false;
    });
    Future.delayed(const Duration(milliseconds: 150), () {
      if (!mounted) return;
      setState(() => _showText = true);
    });
  }

  void _onContinue() {
    if (!_saveSuccess) return;
    context.go('/home');
  }

  void _retry() {
    _startFlow();
  }

  void _backToCategories() {
    context.go('/onboarding/categories');
  }

  @override
  void dispose() {
    _skyController.dispose();
    _phaseTimer?.cancel();
    _continueButtonTimer?.cancel();
    _minTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.of(context).disableAnimations;

    return PopScope(
      canPop: _hasError,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop && _hasError) _backToCategories();
      },
      child: Scaffold(
        backgroundColor: AppColors.canvas,
        body: SafeArea(
          child: Semantics(
            label: 'Setting up your day. Please wait.',
            container: true,
            child: _hasError
                ? _buildErrorView()
                : (reduceMotion
                    ? _buildReduceMotionView()
                    : _buildAnimatedView()),
          ),
        ),
      ),
    );
  }

  // ── Error view ──────────────────────────────────────────────────────────────

  Widget _buildErrorView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
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
          Text(
            SettingUpTexts.errorTitle,
            style: AppTextStyles.h1.copyWith(color: AppColors.textPrimary),
          ),
          const SizedBox(height: 12),
          Text(
            _errorMessage.isNotEmpty
                ? _errorMessage
                : SettingUpTexts.errorMessage,
            style: AppTextStyles.body14.copyWith(
              color: AppColors.textSecondary,
              height: 1.45,
            ),
          ),
          const Spacer(flex: 2),
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

  // ── Reduce-motion fallback ──────────────────────────────────────────────────

  Widget _buildReduceMotionView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 28,
            height: 28,
            child: CircularProgressIndicator(strokeWidth: 2.2),
          ),
          const SizedBox(height: 32),
          Text(
            _phaseIndex < _kPhases.length
                ? _kPhases[_phaseIndex].title
                : 'Setting up...',
            textAlign: TextAlign.center,
            style: AppTextStyles.body16.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 48),
          if (_showContinueButton) _buildContinueButton(),
        ],
      ),
    );
  }

  // ── Main animated view ──────────────────────────────────────────────────────

  Widget _buildAnimatedView() {
    final phase = _phaseIndex < _kPhases.length
        ? _kPhases[_phaseIndex]
        : _kPhases.last;
    final progress = (_phaseIndex + 1) / _kPhases.length;

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Sky Canvas ─────────────────────────────────────────────────────
          _SkyCanvas(controller: _skyController),
          const SizedBox(height: 24),

          // ── Text area ──────────────────────────────────────────────────────
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                  child: AnimatedOpacity(
                    opacity: _showText ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 200),
                    child: Text(
                      phase.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: AppTextStyles.fontFamily,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                AnimatedOpacity(
                  opacity: _showText ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 200),
                  child: Text(
                    phase.subtitle,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.body14.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),

                // ── Progress bar ────────────────────────────────────────────
                const SizedBox(height: 16),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 280),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'PREPARING DAY-CANVAS',
                            style: TextStyle(
                              fontFamily: 'JetBrains Mono',
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.06,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          Text(
                            '${(progress * 100).round()}%',
                            style: const TextStyle(
                              fontFamily: 'JetBrains Mono',
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primarySage,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(99),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                          height: 6,
                          width: 280 * progress,
                          color: AppColors.primarySage,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // ── Step indicators ────────────────────────────────────────────────
          _StepIndicators(activeStep: phase.step),

          const SizedBox(height: 28),

          // ── Continue button ────────────────────────────────────────────────
          AnimatedOpacity(
            opacity: _showContinueButton ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOut,
            child: _showContinueButton
                ? _buildContinueButton()
                : const SizedBox(height: 52),
          ),
        ],
      ),
    );
  }

  Widget _buildContinueButton() {
    final canContinue = _saveSuccess;
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        child: ElevatedButton(
          onPressed: canContinue ? _onContinue : null,
          style: ElevatedButton.styleFrom(
            backgroundColor:
                canContinue ? AppColors.primarySage : AppColors.textSecondary.withValues(alpha: 0.25),
            foregroundColor:
                canContinue ? Colors.white : AppColors.textSecondary,
            elevation: canContinue ? 2 : 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(99),
            ),
          ),
          child: Text(
            'Continue',
            style: TextStyle(
              fontFamily: AppTextStyles.fontFamily,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: canContinue ? Colors.white : AppColors.textSecondary,
            ),
          ),
        ),
      ),
    );
  }
}

// ─── Sky Canvas Widget ────────────────────────────────────────────────────────

class _SkyCanvas extends StatelessWidget {
  final AnimationController controller;

  const _SkyCanvas({required this.controller});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: 200,
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, _) {
            final t = controller.value; // 0.0 → 1.0, looping
            return CustomPaint(
              painter: _DiurnalSkyPainter(t: t),
              child: const SizedBox.expand(),
            );
          },
        ),
      ),
    );
  }
}

/// Renders the diurnal sky cycle, sun/moon arcs, twinkling stars, and dune horizon.
class _DiurnalSkyPainter extends CustomPainter {
  final double t; // 0.0..1.0 (looping)

  const _DiurnalSkyPainter({required this.t});

  // ── Sky gradient keyframes (mirrors CSS @keyframes diurnalSkyCycle) ────────
  static const _skyKeyframes = [
    // (t, topColor, bottomColor)
    (0.00, Color(0xFFFDBA74), Color(0xFFFED7AA)), // dawn orange
    (0.22, Color(0xFF67E8F9), Color(0xFFBAE6FD)), // day cyan
    (0.45, Color(0xFFF97316), Color(0xFFFDBA74)), // sunset orange
    (0.54, Color(0xFF312E81), Color(0xFF4338CA)), // dusk indigo
    (0.75, Color(0xFF0F172A), Color(0xFF1E293B)), // night dark
    (0.92, Color(0xFF475569), Color(0xFF94A3B8)), // pre-dawn slate
    (1.00, Color(0xFFFDBA74), Color(0xFFFED7AA)), // dawn orange (wrap)
  ];

  static const _groundColor = Color(0xFFFAF8F5);

  Color _skyTop() => _interp(t, topColor: true);
  Color _skyBottom() => _interp(t, topColor: false);

  Color _interp(double v, {required bool topColor}) {
    for (int i = 0; i < _skyKeyframes.length - 1; i++) {
      final (t0, top0, bot0) = _skyKeyframes[i];
      final (t1, top1, bot1) = _skyKeyframes[i + 1];
      if (v >= t0 && v <= t1) {
        final p = (v - t0) / (t1 - t0);
        return topColor
            ? Color.lerp(top0, top1, p)!
            : Color.lerp(bot0, bot1, p)!;
      }
    }
    return topColor ? _skyKeyframes.last.$2 : _skyKeyframes.last.$3;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;
    final horizonY = h * 0.70;

    // 1. Sky gradient
    final skyGrad = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [_skyTop(), _skyBottom(), _groundColor],
      stops: const [0.0, 0.65, 1.0],
    );
    canvas.drawRect(
      Rect.fromLTWH(0, 0, w, h),
      Paint()..shader = skyGrad.createShader(Rect.fromLTWH(0, 0, w, h)),
    );

    // 2. Stars (visible during night phase: t ∈ 0.45..0.92)
    _drawStars(canvas, size, t);

    // 3. Sun (visible during day half: t ∈ 0..0.48)
    _drawCelestialBody(
      canvas: canvas,
      size: size,
      horizonY: horizonY,
      phaseStart: 0.0,
      phaseEnd: 0.48,
      visibleStart: 0.04,
      visibleEnd: 0.44,
      t: t,
      isSun: true,
    );

    // 4. Moon (visible during night half: t ∈ 0.48..1.00)
    _drawCelestialBody(
      canvas: canvas,
      size: size,
      horizonY: horizonY,
      phaseStart: 0.48,
      phaseEnd: 1.00,
      visibleStart: 0.53,
      visibleEnd: 0.94,
      t: t,
      isSun: false,
    );

    // 5. Horizon mist overlay
    final mistGrad = LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        _groundColor.withValues(alpha: 0.9),
        _groundColor.withValues(alpha: 0.0),
      ],
      stops: const [0.0, 0.5],
    );
    canvas.drawRect(
      Rect.fromLTWH(0, horizonY - 20, w, h - horizonY + 20),
      Paint()
        ..shader = mistGrad.createShader(
          Rect.fromLTWH(0, horizonY - 20, w, h - horizonY + 20),
        ),
    );

    // 6. Rolling dune horizon (3 SVG-style paths)
    _drawDunes(canvas, size, horizonY);
  }

  void _drawCelestialBody({
    required Canvas canvas,
    required Size size,
    required double horizonY,
    required double phaseStart,
    required double phaseEnd,
    required double visibleStart,
    required double visibleEnd,
    required double t,
    required bool isSun,
  }) {
    if (t < phaseStart || t > phaseEnd) return;
    final p = ((t - phaseStart) / (phaseEnd - phaseStart)).clamp(0.0, 1.0);
    final curvedP = Curves.easeInOut.transform(p);

    // Parabolic arc: left horizon → peak at center → right horizon
    final x = size.width * (0.1 + 0.8 * curvedP);
    final arcHeight = horizonY * 0.80;
    final y = horizonY - math.sin(p * math.pi) * arcHeight;

    // Opacity: fade in/out at horizon edges
    double opacity = 1.0;
    if (t < visibleStart) {
      opacity = ((t - phaseStart) / (visibleStart - phaseStart)).clamp(0.0, 1.0);
    } else if (t > visibleEnd) {
      opacity = (1.0 - (t - visibleEnd) / (phaseEnd - visibleEnd)).clamp(0.0, 1.0);
    }

    if (opacity <= 0) return;

    if (isSun) {
      _drawSun(canvas, Offset(x, y), opacity);
    } else {
      _drawMoon(canvas, Offset(x, y), opacity);
    }
  }

  void _drawSun(Canvas canvas, Offset center, double opacity) {
    const sunColor = Color(0xFFD97706); // amber-700
    // Outer glow
    canvas.drawCircle(
      center,
      20,
      Paint()
        ..color = const Color(0xFFFBBF24).withValues(alpha: opacity * 0.4)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 12),
    );
    // Inner glow
    canvas.drawCircle(
      center,
      14,
      Paint()
        ..color = const Color(0xFFFCD34D).withValues(alpha: opacity * 0.3)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6),
    );
    // Core
    canvas.drawCircle(
      center,
      11,
      Paint()..color = sunColor.withValues(alpha: opacity),
    );
  }

  void _drawMoon(Canvas canvas, Offset center, double opacity) {
    const moonColor = Color(0xFFE2E8F0); // slate-200
    // Glow
    canvas.drawCircle(
      center,
      16,
      Paint()
        ..color = const Color(0xFFBFDBFE).withValues(alpha: opacity * 0.25)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10),
    );
    // Core
    canvas.drawCircle(
      center,
      10,
      Paint()..color = moonColor.withValues(alpha: opacity),
    );
    // Crescent shadow
    canvas.drawCircle(
      Offset(center.dx + 4.5, center.dy - 1.5),
      8.5,
      Paint()
        ..color =
            const Color(0xFF1E293B).withValues(alpha: opacity * 0.65),
    );
  }

  void _drawStars(Canvas canvas, Size size, double t) {
    if (t < 0.45 || t > 0.92) return;

    double starOpacity;
    if (t < 0.56) {
      starOpacity = ((t - 0.45) / 0.11).clamp(0.0, 1.0);
    } else if (t > 0.88) {
      starOpacity = (1.0 - (t - 0.88) / 0.04).clamp(0.0, 1.0);
    } else {
      starOpacity = 1.0;
    }

    final starPositions = [
      Offset(size.width * 0.12, size.height * 0.12),
      Offset(size.width * 0.30, size.height * 0.08),
      Offset(size.width * 0.55, size.height * 0.14),
      Offset(size.width * 0.72, size.height * 0.20),
      Offset(size.width * 0.42, size.height * 0.26),
      Offset(size.width * 0.85, size.height * 0.10),
      Offset(size.width * 0.20, size.height * 0.30),
    ];

    for (int i = 0; i < starPositions.length; i++) {
      final twinkle =
          (0.55 + 0.45 * math.sin(t * 25.0 + i * 1.8)).clamp(0.0, 1.0);
      final r = (i % 2 == 0) ? 1.8 : 1.2;
      canvas.drawCircle(
        starPositions[i],
        r,
        Paint()
          ..color = Colors.white.withValues(alpha: starOpacity * twinkle),
      );
    }
  }

  void _drawDunes(Canvas canvas, Size size, double horizonY) {
    final w = size.width;
    final h = size.height;

    // Back dune (lighter)
    final backDunePath = Path()
      ..moveTo(0, horizonY - 8)
      ..cubicTo(w * 0.25, horizonY - 28, w * 0.50, horizonY + 5, w * 0.75, horizonY - 16)
      ..cubicTo(w * 0.875, horizonY - 22, w * 0.944, horizonY - 15, w, horizonY - 13)
      ..lineTo(w, h)
      ..lineTo(0, h)
      ..close();
    canvas.drawPath(
      backDunePath,
      Paint()..color = const Color(0xFFE8E2D9).withValues(alpha: 0.5),
    );

    // Mid dune
    final midDunePath = Path()
      ..moveTo(0, horizonY)
      ..cubicTo(w * 0.194, horizonY - 10, w * 0.388, horizonY + 4, w * 0.611, horizonY - 8)
      ..cubicTo(w * 0.777, horizonY - 14, w * 0.916, horizonY - 1, w, horizonY - 3)
      ..lineTo(w, h)
      ..lineTo(0, h)
      ..close();
    canvas.drawPath(
      midDunePath,
      Paint()..color = const Color(0xFFDFD9D1).withValues(alpha: 0.85),
    );

    // Foreground dune (solid, matches card bg)
    final foreDunePath = Path()
      ..moveTo(0, horizonY + 8)
      ..cubicTo(w * 0.222, horizonY - 2, w * 0.444, horizonY + 12, w * 0.666, horizonY + 2)
      ..cubicTo(w * 0.833, horizonY - 5, w * 0.930, horizonY + 3, w, horizonY + 1)
      ..lineTo(w, h)
      ..lineTo(0, h)
      ..close();
    canvas.drawPath(
      foreDunePath,
      Paint()..color = const Color(0xFFEDE7DF),
    );
  }

  @override
  bool shouldRepaint(covariant _DiurnalSkyPainter old) => old.t != t;
}

// ─── Step Indicators Widget ───────────────────────────────────────────────────

class _StepIndicators extends StatelessWidget {
  final int activeStep; // 0-3; 4 = all done

  const _StepIndicators({required this.activeStep});

  static const _steps = [
    "You're awake about 16 hours a day",
    'Folding your hours into tidy piles...',
    'Teaching the clock to relax...',
    'Making room for the good stuff...',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF9F3EA),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Setup Sequence',
                style: TextStyle(
                  fontFamily: AppTextStyles.fontFamily,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              Text(
                'Min. 4.5s guardrail',
                style: TextStyle(
                  fontFamily: 'JetBrains Mono',
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...List.generate(_steps.length, (i) => _StepRow(
                label: _steps[i],
                index: i,
                activeStep: activeStep,
              )),
        ],
      ),
    );
  }
}

class _StepRow extends StatelessWidget {
  final String label;
  final int index;
  final int activeStep;

  const _StepRow({
    required this.label,
    required this.index,
    required this.activeStep,
  });

  @override
  Widget build(BuildContext context) {
    final isDone = index < activeStep;
    final isActive = index == activeStep;
    final isPending = index > activeStep;

    final dotColor = isDone
        ? AppColors.primarySage
        : isActive
            ? const Color(0xFF3B674F) // secondary
            : const Color(0xFFC0C8C5); // outline-variant

    final textColor = (isDone || isActive)
        ? AppColors.textPrimary
        : AppColors.textSecondary;
    final rowOpacity = isPending ? 0.4 : 1.0;

    return AnimatedOpacity(
      opacity: rowOpacity,
      duration: const Duration(milliseconds: 300),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            // Dot
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: dotColor,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 10),
            // Label
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontFamily: AppTextStyles.fontFamily,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: textColor,
                ),
              ),
            ),
            const SizedBox(width: 8),
            // Icon
            Icon(
              isDone
                  ? Icons.check_rounded
                  : isActive
                      ? Icons.pending_outlined
                      : Icons.schedule_rounded,
              size: 16,
              color: isDone
                  ? AppColors.primarySage
                  : isActive
                      ? const Color(0xFF3B674F)
                      : const Color(0xFFC0C8C5),
            ),
          ],
        ),
      ),
    );
  }
}
