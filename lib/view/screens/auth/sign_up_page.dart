import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  late AuthProvider _authProvider;

  @override
  Widget build(BuildContext context) {
    _authProvider = context.watch();
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionScreenWidth(27.0),
      ),
      child: Form(
        key: _authProvider.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LogoWidget(),
            SizedBox(height: getProportionScreenHeight(31.0)),
            AuthText(),
            SizedBox(height: getProportionScreenHeight(45.0)),
            InputField(
              inputAction: TextInputAction.next,
              inputType: TextInputType.name,
              hint: 'Name',
              controller: _authProvider.emailController,
            ),
            SizedBox(height: getProportionScreenHeight(30.0)),
            InputField(
              inputAction: TextInputAction.next,
              inputType: TextInputType.emailAddress,
              hint: 'Email Address',
              controller: _authProvider.nameController,
            ),
            SizedBox(height: getProportionScreenHeight(30.0)),
            InputField(
              inputAction: TextInputAction.done,
              inputType: TextInputType.visiblePassword,
              hint: 'Password',
              obscureText: true,
              controller: _authProvider.passwordController,
            ),
            SizedBox(height: getProportionScreenHeight(9.0)),
            Align(
              alignment: Alignment.centerRight,
              child: CustomText('Forgot Password?'),
            ),
            SizedBox(height: getProportionScreenHeight(29.0)),
            CustomButton(onPressed: () {}, label: 'SIGN UP'),
            SizedBox(height: getProportionScreenHeight(18.0)),
            ChangeAuthPage(),
          ],
        ),
      ),
    );
  }
}
