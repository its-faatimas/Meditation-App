import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key}) : super(key: key);
  late AuthProvider _authProvider;
  @override
  Widget build(BuildContext context) {
    _authProvider = context.watch();
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            _showLeaf(),
            _authProvider.isLogin ? LoginPage() : SignUpPage(),
          ],
        ),
      ),
    );
  }

  _showLeaf() => Image.asset(
        AssetImages.login,
        height: getProportionateScreenHeight(812.0),
        width: getProportionateScreenWidth(375.0),
        alignment: Alignment.bottomCenter,
      );
}
