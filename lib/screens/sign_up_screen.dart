import 'package:delivery_app/services/constants/color.dart';
import 'package:delivery_app/services/constants/fonts.dart';
import 'package:delivery_app/services/constants/images.dart';
import 'package:delivery_app/services/constants/texts.dart';
import 'package:delivery_app/views/global_views/custom_button_view.dart';
import 'package:delivery_app/views/global_views/custom_text_field_login_view.dart';
import 'package:delivery_app/views/global_views/under_text_view.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool changeIcon = true;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 20,
            color: CustomColors.blackTextColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image(
                  image: CustomImages.deliver3,
                  fit: BoxFit.cover,
                  height: size * .4),
              const Text(CustomStrings.signUp, style: CustomFonts.loginStyle),
              SizedBox(height: size * .015),
              Text(CustomStrings.enterYourNewPassword,
                  style: CustomFonts.enterYourDetailsStyle),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size * .025),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextFieldLogin(
                      text: CustomStrings.name,
                      textStyle: CustomFonts.labelTextStyle,
                    ),
                    SizedBox(height: size * .015),
                    CustomTextFieldLogin(
                      text: CustomStrings.email,
                      textStyle: CustomFonts.labelTextStyle,
                    ),
                    SizedBox(height: size * .015),
                    TextField(
                      obscureText: changeIcon,
                      style: CustomFonts.textFieldStyle,
                      decoration: InputDecoration(
                        labelText: CustomStrings.password,
                        labelStyle: CustomFonts.labelTextStyle,
                        suffixIcon: IconButton(
                          onPressed: () {
                            changeIcon = !changeIcon;
                            setState(() {});
                          },
                          icon: Icon(
                            !changeIcon
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: CustomColors.grey2TextColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size * .025),
                    const UnderText(),
                    SizedBox(height: size * .04),
                  ],
                ),
              ),
              CustomButton(
                size: size,
                buttonColor: CustomColors.orangeButton,
                text: CustomStrings.register,
                onPressed: () {},
              ),
              SizedBox(height: size * .025),
            ],
          ),
        ),
      ),
    );
  }
}
