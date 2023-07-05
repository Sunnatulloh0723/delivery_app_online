import 'package:delivery_app/services/constants/color.dart';
import 'package:delivery_app/services/constants/fonts.dart';
import 'package:delivery_app/services/constants/icons.dart';
import 'package:delivery_app/services/constants/images.dart';
import 'package:delivery_app/services/constants/texts.dart';
import 'package:delivery_app/views/global_views/custom_circle_icon_view.dart';
import 'package:delivery_app/views/global_views/custom_sign_button.dart';
import 'package:delivery_app/views/global_views/custom_text_field.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: size * .045,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image(
                  image: CustomImages.visitable,
                  height: size * .45,
                  width: size * .4,
                  fit: BoxFit.cover),
            ],
          ),
          SizedBox(height: size * .015),
          CustomTextField(
            size: size,
            text: CustomStrings.gerYourGroceries,
            customCircleIcon: CustomCircleIcon(
              onPressed: () => Navigator.pushNamed(context, "/screenTwo"),
            ),
          ),
          SizedBox(height: size * .035),
          const Text(
            CustomStrings.orConnectWith,
            style: CustomFonts.orConnectWithStyle,
          ),
          SizedBox(height: size * .05),
          CustomSignButton(
              size: size,
              buttonColor: CustomColors.white,
              textColor: CustomColors.blackTextColor,
              text: CustomStrings.signInWithGoogle,
              image: CustomIcons.google,
              side: true,
              onPressed: () => Navigator.pushNamed(context, "/OTPScreen"),
          ),
          SizedBox(height: size * .02),
          CustomSignButton(
            size: size,
            buttonColor: CustomColors.blueButton,
            textColor: CustomColors.white,
            text: CustomStrings.continueWithFaceBook,
            image: CustomIcons.facebook,
            side: true,
            onPressed: () {
              Navigator.pushNamed(context, "/SignUpScreen");
            },
          ),
        ],
      ),
    );
  }
}
