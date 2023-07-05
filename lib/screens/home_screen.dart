import 'package:delivery_app/services/constants/color.dart';
import 'package:delivery_app/services/constants/images.dart';
import 'package:delivery_app/services/constants/texts.dart';
import 'package:delivery_app/views/global_views/custom_button_view.dart';
import 'package:flutter/material.dart';

import '../services/constants/fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size * .025),
        child: Column(
          children: [
            SizedBox(height: size * .12),
            const Image(image: CustomImages.deliver, fit: BoxFit.cover),
            SizedBox(height: size * .02),
            const Text(
              CustomStrings.getTheFastest,
              textAlign: TextAlign.center,
              style: CustomFonts.getTheFastestStyle,
            ),
            SizedBox(height: size * .02),
            Text(
              CustomStrings.gerYour,
              textAlign: TextAlign.center,
              style: CustomFonts.gerYourStyle,
            ),
            SizedBox(height: size * .04),
            CustomButton(
              size: size,
              buttonColor: CustomColors.orangeButton,
              text: CustomStrings.getStarted,
              onPressed: () => Navigator.pushNamed(context, "/screenOne"),
            ),
            SizedBox(height: size * .03),
            CustomButton(
              size: size,
              buttonColor: CustomColors.greenButton,
              text: CustomStrings.logIn,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

