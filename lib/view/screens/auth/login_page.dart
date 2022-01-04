import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';
import 'package:meditation_app/view/screens/home%20copy/home_page.dart';
import 'package:meditation_app/view/screens/main/main_page.dart';
import 'package:meditation_app/view/screens/main_screen/main_screen.dart';
import 'package:meditation_app/view/screens/profile_screen/profile_screen.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
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
            LogoWidget(
              height: getProportionScreenHeight(49.0),
              width: getProportionScreenWidth(43.41),
            ),
            SizedBox(height: getProportionScreenHeight(31.0)),
            AuthText(),
            SizedBox(height: getProportionScreenHeight(45.0)),
            InputField(
              inputAction: TextInputAction.next,
              inputType: TextInputType.emailAddress,
              hint: 'Email Address',
              controller: _authProvider.emailController,
            ),
            SizedBox(height: getProportionScreenHeight(30.0)),
            InputField(
              inputAction: TextInputAction.done,
              inputType: TextInputType.visiblePassword,
              obscureText: true,
              hint: 'Password',
              controller: _authProvider.passwordController,
            ),
            SizedBox(height: getProportionScreenHeight(9.0)),
            Align(
              alignment: Alignment.centerRight,
              child: CustomText('Forgot Password?'),
            ),
            SizedBox(height: getProportionScreenHeight(29.0)),
            CustomButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                label: 'LOGIN'),
            SizedBox(height: getProportionScreenHeight(18.0)),
            ChangeAuthPage(),
          ],
        ),
      ),
    );
  }
}
