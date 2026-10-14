import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import 'app_text_field.dart';

/// Password input field with show/hide toggle matching Figma 03_login.png:
/// Slashed eye icon for hidden state, >=48dp touch target, error styling
class AppPasswordField extends StatefulWidget {
  final TextEditingController? controller;
  final String label;
  final String? hintText;
  final String? errorText;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final bool isEnabled;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;

  const AppPasswordField({
    super.key,
    this.controller,
    this.label = 'Password',
    this.hintText,
    this.errorText,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.onSubmitted,
    this.isEnabled = true,
    this.focusNode,
    this.validator,
  });

  @override
  State<AppPasswordField> createState() => _AppPasswordFieldState();
}

class _AppPasswordFieldState extends State<AppPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      label: widget.label,
      hintText: widget.hintText,
      errorText: widget.errorText,
      obscureText: _obscureText,
      keyboardType: TextInputType.visiblePassword,
      textInputAction: widget.textInputAction,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      isEnabled: widget.isEnabled,
      validator: widget.validator,
      suffixIcon: Semantics(
        label: _obscureText ? 'Show password' : 'Hide password',
        button: true,
        child: SizedBox(
          width: 48,
          height: 48,
          child: IconButton(
            icon: Icon(
              _obscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              size: 22,
              color: AppColors.secondary,
            ),
            tooltip: _obscureText ? 'Show password' : 'Hide password',
            onPressed: widget.isEnabled
                ? () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  }
                : null,
          ),
        ),
      ),
    );
  }
}
