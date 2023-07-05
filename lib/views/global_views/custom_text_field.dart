import 'package:country_code_picker/country_code_picker.dart';
import 'package:delivery_app/services/constants/fonts.dart';
import 'package:delivery_app/views/global_views/custom_circle_icon_view.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double size;
  final String text;
  final CustomCircleIcon? customCircleIcon;

  const CustomTextField(
      {Key? key, required this.size, required this.text, this.customCircleIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size * .035),
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: CustomFonts.gerYourGroceriesStyle,
          ),
        ),
        SizedBox(height: size * .015),
        Padding(
          padding: EdgeInsets.only(left: size * .035),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 19),
              prefixIcon: const CountryCodePicker(),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(5),
                child: customCircleIcon,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
