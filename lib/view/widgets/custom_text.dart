import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

class CustomText extends StatelessWidget {
  String data;
  double size;
  Color color;
  FontWeight weight;

  CustomText(
    this.data, {
    Key? key,
    this.size = 14.0,
    this.color = ConstColors.whiteSeventy,
    this.weight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: color,
        fontSize: getProportionateScreenWidth(size),
        fontWeight: weight,
      ),
    );
  }
}
