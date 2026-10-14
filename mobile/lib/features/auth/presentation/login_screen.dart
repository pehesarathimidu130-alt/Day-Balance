import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../shared/widgets/app_text_field.dart';
import '../../../shared/widgets/app_password_field.dart';
import '../../../shared/widgets/primary_button.dart';
import '../../../shared/widgets/secondary_button.dart';
import 'auth_controller.dart';

/// Login Screen strictly matching Figma 03_login.png and Day-Balance Style Guide.
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  String? _emailError;
  String? _passwordError;
  String? _generalError;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void _clearErrors() {
    if (_emailError != null || _passwordError != null || _generalError != null) {
      setState(() {
        _emailError = null;
        _passwordError = null;
        _generalError = null;
      });
    }
  }

  bool _validateFields() {
    final email = _emailController.text.trim();
    final password = _passwordController.text;
    bool isValid = true;
    String? emailErr;
    String? passwordErr;

    if (email.isEmpty) {
      emailErr = 'Enter your email address';
      isValid = false;
    } else {
      final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
      if (!emailRegex.hasMatch(email)) {
        emailErr = 'Enter a valid email address';
        isValid = false;
      }
    }

    if (password.isEmpty) {
      passwordErr = 'Enter your password';
      isValid = false;
    } else if (password.length < 8) {
      passwordErr = 'Password must be at least 8 characters';
      isValid = false;
    }

    setState(() {
      _emailError = emailErr;
      _passwordError = passwordErr;
      _generalError = null;
    });

    return isValid;
  }

  Future<void> _handleLogin() async {
    _clearErrors();
    if (!_validateFields()) return;

    final email = _emailController.text.trim();
    final password = _passwordController.text;

    final success = await ref.read(authControllerProvider.notifier).login(
          email: email,
          password: password,
        );

    if (!mounted) return;

    if (success) {
      final user = ref.read(authControllerProvider).user;
      if (user != null && user.onboardingDone) {
        context.go('/home');
      } else {
        context.go('/onboarding/schedule');
      }
    } else {
      final errorMessage = ref.read(authControllerProvider).errorMessage ?? '';
      setState(() {
        if (errorMessage.toLowerCase().contains('invalid') ||
            errorMessage.toLowerCase().contains('password') ||
            errorMessage.toLowerCase().contains('email')) {
          // Exact text shown in Figma 03_login.png
          _passwordError =
              'That password doesn’t match this email. Try again or reset it below.';
        } else {
          _generalError = errorMessage;
        }
      });
    }
  }

  void _handleForgotPassword() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Password reset will be available soon. Please contact support if you need help.',
          style: AppTextStyles.body14.copyWith(color: AppColors.white),
        ),
        backgroundColor: AppColors.text,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);
    final isLoading = authState.isLoading;

    return Scaffold(
      backgroundColor: AppColors.canvas,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 12),
                      // Back Button (Material Symbols / Arrow Back, >=48dp touch target)
                      Semantics(
                        label: 'Back',
                        button: true,
                        child: SizedBox(
                          width: 48,
                          height: 48,
                          child: IconButton(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 24,
                              color: AppColors.text,
                            ),
                            onPressed: () {
                              if (context.canPop()) {
                                context.pop();
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Title: "Good to see you." (Heading 32/38 Roboto Medium #292E28)
                      Text(
                        'Good to see you.',
                        style: AppTextStyles.heading,
                      ),
                      const SizedBox(height: 8),

                      // Subtitle: "Log in and pick up\nwhere you left off." (Body 16/22 Roboto Regular #62675D)
                      Text(
                        'Log in and pick up\nwhere you left off.',
                        style: AppTextStyles.body16,
                      ),
                      const SizedBox(height: 32),

                      // General server error banner if network/server issue
                      if (_generalError != null) ...[
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(bottom: 16),
                          decoration: BoxDecoration(
                            color: AppColors.errorContainer,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            _generalError!,
                            style: AppTextStyles.error,
                          ),
                        ),
                      ],

                      // Email Field (Floating label "Email", radius 4)
                      AppTextField(
                        controller: _emailController,
                        focusNode: _emailFocusNode,
                        label: 'Email',
                        hintText: 'maya.chen@university.edu',
                        errorText: _emailError,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        isEnabled: !isLoading,
                        onChanged: (_) => _clearErrors(),
                        onSubmitted: (_) {
                          _passwordFocusNode.requestFocus();
                        },
                      ),
                      const SizedBox(height: 16),

                      // Password Field (Floating label "Password", show/hide toggle, radius 4)
                      AppPasswordField(
                        controller: _passwordController,
                        focusNode: _passwordFocusNode,
                        label: 'Password',
                        errorText: _passwordError,
                        textInputAction: TextInputAction.done,
                        isEnabled: !isLoading,
                        onChanged: (_) => _clearErrors(),
                        onSubmitted: (_) => _handleLogin(),
                      ),
                      const SizedBox(height: 12),

                      // "Forgot password?" Link (Right-aligned, Roboto Semibold 14, #49664D)
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: isLoading ? null : _handleForgotPassword,
                          style: TextButton.styleFrom(
                            foregroundColor: AppColors.primarySage,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 12,
                            ),
                            minimumSize: const Size(48, 48),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(
                            'Forgot password?',
                            style: AppTextStyles.link,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Primary Button: "Log in" (Height 48dp, Pill radius 100, #49664D)
                      AppPrimaryButton(
                        text: 'Log in',
                        isLoading: isLoading,
                        isEnabled: !isLoading,
                        onPressed: _handleLogin,
                      ),

                      // Flexible spacer to push bottom CTA down on larger displays
                      const Spacer(),
                      const SizedBox(height: 32),

                      // "New to Day-Balance?" Prompt (Roboto Regular 14, #62675D)
                      Text(
                        'New to Day-Balance?',
                        style: AppTextStyles.body14.copyWith(
                          color: AppColors.secondary,
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Secondary Button: "Create an account" (Height 48dp, Pill radius 100, outlined)
                      AppSecondaryButton(
                        text: 'Create an account',
                        isEnabled: !isLoading,
                        onPressed: () {
                          context.go('/register');
                        },
                      ),
                      const SizedBox(height: 24),
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
