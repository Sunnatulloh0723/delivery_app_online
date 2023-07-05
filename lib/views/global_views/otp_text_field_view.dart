import 'package:delivery_app/services/constants/color.dart';
import 'package:delivery_app/services/constants/fonts.dart';
import 'package:delivery_app/services/constants/texts.dart';
import 'package:flutter/material.dart';

class OTPTextField extends StatelessWidget {
  const OTPTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      style: const TextStyle(fontSize: 25, letterSpacing: 5),
      obscureText: true,
      obscuringCharacter: "-",
      decoration: InputDecoration(
        counterText: CustomStrings.resendCode,
        counterStyle: TextStyle(
            color: CustomColors.resendColor,
            fontFamily: CustomFonts.Nunito,
            fontSize: 15),
      ),
    );
  }
}
