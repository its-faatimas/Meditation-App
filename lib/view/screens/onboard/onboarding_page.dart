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
            const Text(
              "WELCOME",
              style: TextStyle(
                height: 1.75,
                color: ConstColors.whiteSeventy,
                fontSize: 34.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              "Do meditation. Stay focused.                     Live a healthy life.",
              style: TextStyle(
                color: ConstColors.whiteSeventy,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                fontFamily: "AlegreyaSans",
                height: 1.25,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 27.0, left: 27.0, top: 119.0, bottom: 18.0),
              child: CustomButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AuthPage()));
                },
                label: "Login With Email",
              ),
            ),
            ChangeAuthPage(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => AuthPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
