import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

class ChangeAuthPage extends StatelessWidget {
  VoidCallback? onPressed;
  bool isOnboardingPage;
  ChangeAuthPage({
    Key? key,
    this.onPressed,
    this.isOnboardingPage = false,
  }) : super(key: key);
  late AuthProvider _provider;

  @override
  Widget build(BuildContext context) {
    _provider = context.watch();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(_provider.isLogin ? _loginText : _signUpText, size: 20.0),
        TextButton(
          onPressed: onPressed ?? _provider.onPageChanged,
          child: CustomText(
            _provider.isLogin ? 'Sign Up' : 'Sign In',
            size: 20.0,
            weight: FontWeight.w600,
          ),
        )
      ],
    );
  }

  final String _loginText = 'Don’t have an account?';
  final String _signUpText = 'Already have an account?';
}
