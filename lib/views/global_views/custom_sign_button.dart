import 'package:delivery_app/services/constants/fonts.dart';
import 'package:flutter/material.dart';

class CustomSignButton extends StatelessWidget {
  final double size;
  final Color buttonColor;
  final Color textColor;
  final String text;

  final AssetImage image;
  final bool side;
  final void Function()? onPressed;

  const   CustomSignButton({
    Key? key,
    required this.size,
    required this.buttonColor,
    required this.textColor,
    required this.text,
    required this.image,
    this.side = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size * .05),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 1,
            backgroundColor: buttonColor,
            side: side
                ? const BorderSide(width: 0.3, color: Colors.grey)
                : BorderSide.none,
            minimumSize: Size(size, size * .08)),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontFamily: CustomFonts.Nunito,
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: textColor,
              ),
            ),
            Image(image: image, height: size * .035, width: size * .035),
          ],
        ),
      ),
    );
  }
}
