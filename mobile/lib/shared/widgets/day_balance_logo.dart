import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

/// Day-Balance sunrise logo mark matching Figma 01_welcome.png.
/// Rendered using vector Canvas drawing for crispness at any resolution without network dependencies.
class DayBalanceLogo extends StatelessWidget {
  final double size;
  final Color? color;

  const DayBalanceLogo({
    super.key,
    this.size = 32.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _DayBalanceLogoPainter(
          color: color ?? AppColors.primarySage,
        ),
      ),
    );
  }
}

class _DayBalanceLogoPainter extends CustomPainter {
  final Color color;

  _DayBalanceLogoPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final strokeWidth = size.width * (2.2 / 32.0);
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final cx = size.width / 2.0;
    final cy = size.height * 0.68;
    final radius = size.width * 0.28;

    // Sun semi-circle arc (rising sun)
    final arcRect = Rect.fromCircle(center: Offset(cx, cy), radius: radius);
    canvas.drawArc(arcRect, math.pi, math.pi, false, paint);

    // Three sun rays
    final rayGap = size.width * (3.0 / 32.0);
    final rayLength = size.width * (5.5 / 32.0);

    // 1. Center ray (pointing straight up)
    canvas.drawLine(
      Offset(cx, cy - radius - rayGap),
      Offset(cx, cy - radius - rayGap - rayLength),
      paint,
    );

    // 2. Left ray (-45 degrees)
    const angleLeft = -3.0 * math.pi / 4.0;
    final lx1 = cx + (radius + rayGap) * math.cos(angleLeft);
    final ly1 = cy + (radius + rayGap) * math.sin(angleLeft);
    final lx2 = cx + (radius + rayGap + rayLength) * math.cos(angleLeft);
    final ly2 = cy + (radius + rayGap + rayLength) * math.sin(angleLeft);
    canvas.drawLine(Offset(lx1, ly1), Offset(lx2, ly2), paint);

    // 3. Right ray (+45 degrees)
    const angleRight = -math.pi / 4.0;
    final rx1 = cx + (radius + rayGap) * math.cos(angleRight);
    final ry1 = cy + (radius + rayGap) * math.sin(angleRight);
    final rx2 = cx + (radius + rayGap + rayLength) * math.cos(angleRight);
    final ry2 = cy + (radius + rayGap + rayLength) * math.sin(angleRight);
    canvas.drawLine(Offset(rx1, ry1), Offset(rx2, ry2), paint);

    // Horizon line 1 (upper ground bar)
    final bar1Y = cy + size.height * (2.0 / 32.0);
    canvas.drawLine(
      Offset(size.width * 0.08, bar1Y),
      Offset(size.width * 0.92, bar1Y),
      paint,
    );

    // Horizon line 2 (lower ground bar, slightly indented)
    final bar2Y = bar1Y + size.height * (4.5 / 32.0);
    canvas.drawLine(
      Offset(size.width * 0.14, bar2Y),
      Offset(size.width * 0.86, bar2Y),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant _DayBalanceLogoPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}
