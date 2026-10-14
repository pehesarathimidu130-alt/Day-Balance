import 'package:flutter/material.dart';

/// A placeholder widget used during development.
/// Shows a centered message in a styled card.
class PlaceholderContent extends StatelessWidget {
  final String message;
  final IconData? icon;

  const PlaceholderContent({
    super.key,
    required this.message,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Icon(
              icon,
              size: 64,
              color: Theme.of(context).colorScheme.primary.withAlpha(128),
            ),
          const SizedBox(height: 16),
          Text(
            message,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface
                      .withAlpha(153),
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
