import 'package:delivery_app/services/constants/fonts.dart';
import 'package:flutter/material.dart';

class CustomTextFieldLogin extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  const CustomTextFieldLogin({
    Key? key,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      style: CustomFonts.textFieldStyle,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: textStyle,
      ),
    );
  }
}
