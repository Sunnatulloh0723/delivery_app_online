import 'package:delivery_app/services/constants/images.dart';
import 'package:delivery_app/services/constants/texts.dart';
import 'package:delivery_app/views/global_views/custom_text_field.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: size * .035),
          const Image(image: CustomImages.girl, fit: BoxFit.cover),
          SizedBox(height: size * .025),
          CustomTextField(size: size, text: CustomStrings.enterYourPhone),
        ],
      ),
    );
  }
}
