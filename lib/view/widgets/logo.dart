import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

class LogoWidget extends StatelessWidget {
  double height;
  double width;

  LogoWidget({
    Key? key,
    this.height = 49.0,
    this.width = 43.41,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AssetIcons.logo,
      color: ConstColors.whiteSeventy,
      fit: BoxFit.cover,
      height: getProportionateScreenHeight(height),
      width: getProportionateScreenWidth(width),
    );
  }
}
