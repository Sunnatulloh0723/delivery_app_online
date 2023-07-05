import 'package:delivery_app/services/constants/color.dart';
import 'package:delivery_app/services/constants/fonts.dart';
import 'package:delivery_app/services/constants/texts.dart';
import 'package:delivery_app/views/global_views/otp_text_field_view.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: AppBar(
        backgroundColor: CustomColors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_outlined,
              size: 20, color: CustomColors.blackTextColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: size * .035),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size * .035),
            const Text(CustomStrings.enterYourCode,
                style: CustomFonts.enterYourCodeStyle),
            SizedBox(height: size * .035),
            Text(CustomStrings.code,
                style: TextStyle(color: CustomColors.grey2TextColor)),
            const OTPTextField(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.orangeButton,
        onPressed: () => Navigator.pushNamed(context, "/LoginScreen"),
        child: const Icon(Icons.arrow_forward_ios_outlined, size: 30),
      ),
    );
  }
}
