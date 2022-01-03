import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';
import 'package:meditation_app/core/components/size_config.dart';
import 'package:meditation_app/view/screens/home/onboarding_page.dart';
import 'package:meditation_app/view/widgets/decoration_box.dart';

class SplashScreen extends StatelessWidget {
  // Widget widget;
  SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    showTimer(context);
    return Scaffold(
      body: DecorationBox(
        widget: SvgPicture.asset(AssetIcons.logo),
      ),
    );
  }

  void showTimer(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnboardingPage()));
    });
  }
}
