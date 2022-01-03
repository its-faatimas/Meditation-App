import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

class DecorationBox extends StatelessWidget {
  Widget widget;

  DecorationBox({required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // width: getProportionateScreenWidth(375.0),
      // height: getProportionateScreenHeight(812.0),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/splash.png"), fit: BoxFit.cover),
      ),
      child: widget,
    );
  }
}
