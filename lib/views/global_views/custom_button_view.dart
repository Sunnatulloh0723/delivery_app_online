


import 'package:delivery_app/services/constants/fonts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double size;
  final Color buttonColor;
  final String text;
  final void Function()? onPressed;

  const CustomButton({
    Key? key,
    required this.size,
    required this.buttonColor,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          minimumSize: Size(size * .35, size * .08),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
      onPressed: onPressed,
      child:  Text(
        text,
        style: CustomFonts.getStartedStyle,
      ),
    );
  }
}
