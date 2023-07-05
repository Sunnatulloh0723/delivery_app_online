import 'package:delivery_app/services/constants/color.dart';
import 'package:flutter/material.dart';

class CustomCircleIcon extends StatelessWidget {
  final void Function()? onPressed;

  const CustomCircleIcon({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: CustomColors.orangeButton,
        shape: const CircleBorder(),
      ),
      onPressed: onPressed,
      child: const Icon(
        Icons.arrow_forward_ios_outlined,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}