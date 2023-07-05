

import 'package:delivery_app/services/constants/color.dart';
import 'package:delivery_app/services/constants/fonts.dart';
import 'package:delivery_app/services/constants/texts.dart';
import 'package:flutter/material.dart';

class UnderText extends StatelessWidget {
  const UnderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: CustomStrings.byContinuing,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          fontFamily: CustomFonts.Nunito,
          color: CustomColors.blackTextColor,
        ),
        children: [
          TextSpan(
            text: CustomStrings.terms,
            style: TextStyle(color: CustomColors.resendColor),
          ),
          const TextSpan(
            text: CustomStrings.and,
            style:
            TextStyle(color: CustomColors.blackTextColor),
          ),
          TextSpan(
            text: CustomStrings.privacy,
            style: TextStyle(color: CustomColors.resendColor),
          ),
        ],
      ),
    );
  }
}