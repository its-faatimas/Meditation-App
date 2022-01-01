import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  late AuthProvider _authProvider;

  @override
  Widget build(BuildContext context) {
    _authProvider = context.watch();
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(27.0),
      ),
      child: Form(
        key: _authProvider.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LogoWidget(),
            SizedBox(height: getProportionateScreenHeight(31.0)),
            AuthText(),
            SizedBox(height: getProportionateScreenHeight(45.0)),
            InputField(
              inputAction: TextInputAction.next,
              inputType: TextInputType.emailAddress,
              hint: 'Email Address',
              controller: _authProvider.emailController,
            ),
            SizedBox(height: getProportionateScreenHeight(30.0)),
            InputField(
              inputAction: TextInputAction.done,
              inputType: TextInputType.visiblePassword,
              obscureText: true,
              hint: 'Password',
              controller: _authProvider.passwordController,
            ),
            SizedBox(height: getProportionateScreenHeight(9.0)),
            Align(
              alignment: Alignment.centerRight,
              child: CustomText('Forgot Password?'),
            ),
            SizedBox(height: getProportionateScreenHeight(29.0)),
            CustomButton(onPressed: () {}, label: 'LOGIN'),
            SizedBox(height: getProportionateScreenHeight(18.0)),
            ChangeAuthPage(),
          ],
        ),
      ),
    );
  }
}
