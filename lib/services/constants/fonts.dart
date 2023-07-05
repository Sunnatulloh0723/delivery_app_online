import 'package:delivery_app/services/constants/color.dart';
import 'package:flutter/cupertino.dart';

class CustomFonts {
  static const Nunito = "Nunito";

  static const TextStyle getTheFastestStyle = TextStyle(
    fontFamily: CustomFonts.Nunito,
    fontWeight: FontWeight.w600,
    fontSize: 26,
    letterSpacing: -1,
    color: CustomColors.blackTextColor,
  );

  static TextStyle gerYourStyle = TextStyle(
    fontFamily: CustomFonts.Nunito,
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: CustomColors.greyTextColor,
  );

  static const TextStyle getStartedStyle = TextStyle(
    fontFamily: CustomFonts.Nunito,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: CustomColors.white,
  );
  static const TextStyle gerYourGroceriesStyle = TextStyle(
    fontFamily: CustomFonts.Nunito,
    fontWeight: FontWeight.w600,
    fontSize: 26,
    color: CustomColors.blackTextColor,
  );

  static const TextStyle orConnectWithStyle = TextStyle(
    fontFamily: CustomFonts.Nunito,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: CustomColors.blackTextColor,
  );

  static const TextStyle enterYourCodeStyle = TextStyle(
    fontFamily: CustomFonts.Nunito,
    fontWeight: FontWeight.w400,
    fontSize: 25,
    color: CustomColors.blackTextColor,
  );

  static const TextStyle loginStyle = TextStyle(
    fontFamily: CustomFonts.Nunito,
    fontWeight: FontWeight.w700,
    fontSize: 26,
    color: CustomColors.blackTextColor,
  );

  static TextStyle enterYourDetailsStyle = TextStyle(
    fontFamily: CustomFonts.Nunito,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: CustomColors.grey2TextColor,
  );


  static TextStyle textFieldStyle =  TextStyle(
    fontFamily: CustomFonts.Nunito,
    color: CustomColors.grey2TextColor,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static TextStyle labelTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: CustomFonts.Nunito,
    color: CustomColors.grey2TextColor,
  );
}
