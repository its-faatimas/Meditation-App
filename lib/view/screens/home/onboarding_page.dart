import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';
import 'package:meditation_app/view/widgets/decoration_box.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecorationBox(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AssetIcons.logo,
              // height: getProportionateScreenHeight(190.0),
              // width: getProportionateScreenWidth(190.0),
            ),
            Text(
              "WELCOME",
              style: TextStyle(
                color: ConstColors.whiteSeventy,
                fontSize: 34.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
