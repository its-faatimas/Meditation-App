import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

class AuthText extends StatelessWidget {
  AuthText({Key? key}) : super(key: key);
  late AuthProvider _provider;

  @override
  Widget build(BuildContext context) {
    _provider = context.watch();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          _provider.isLogin ? 'Sign In' : 'Sign Up',
          size: 30.0,
          weight: FontWeight.w500,
        ),
        SizedBox(height: getProportionateScreenHeight(4.0)),
        CustomText(_provider.isLogin ? _loginText : _signUpText, size: 22.0)
      ],
    );
  }

  final String _loginText =
      'Sign in now to acces your excercises and saved music.';
  final String _signUpText =
      'Sign up now for free and start meditating, and explore Medic.';
}
