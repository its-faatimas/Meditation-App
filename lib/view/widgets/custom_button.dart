import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onPressed;
  String label;

  CustomButton({
    required this.onPressed,
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label, style: TextStyle(
        fontSize: getProportionScreenWidth(25.0),
        fontWeight: FontWeight.w500,fontFamily: "Alegreya Sans",
      ),),
      style: ElevatedButton.styleFrom(
        primary: ConstColors.green,
        fixedSize: Size(
          MediaQuery.of(context).size.width,
          getProportionScreenHeight(61.0),
        ),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(getProportionScreenWidth(10.0)),
        ),
      ),
    );
  }
}
