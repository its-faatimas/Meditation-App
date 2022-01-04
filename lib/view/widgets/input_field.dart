import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

class InputField extends StatelessWidget {
  TextEditingController? controller;
  String hint;
  TextInputAction inputAction;
  TextInputType inputType;
  bool obscureText;
  InputField({
    Key? key,
    this.controller,
    this.inputAction = TextInputAction.unspecified,
    this.inputType = TextInputType.text,
    this.hint = '',
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: inputAction,
      keyboardType: inputType,
      obscureText:  obscureText,
      controller: controller ?? TextEditingController(),
      decoration: _buildInputDecoration(),
      style: _setTextStyle(),
    );
  }

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      border: _underlineInputBorder(),
      enabledBorder: _underlineInputBorder(),
      focusedBorder: _underlineInputBorder(),
      hintText: hint,
      hintStyle: _setTextStyle(),
      contentPadding: EdgeInsets.symmetric(
        horizontal: getProportionScreenWidth(12.0),
        vertical: getProportionScreenHeight(10.0)
      )
    );
  }

  UnderlineInputBorder _underlineInputBorder() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(
        color: ConstColors.green,
      ),
    );
  }

  TextStyle _setTextStyle() => TextStyle(
    color: ConstColors.grey,
    fontWeight: FontWeight.w400,
    fontSize: getProportionScreenWidth(18.0),

  );
}
