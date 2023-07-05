import 'package:delivery_app/services/constants/color.dart';
import 'package:delivery_app/services/constants/fonts.dart';
import 'package:delivery_app/services/constants/images.dart';
import 'package:delivery_app/services/constants/texts.dart';
import 'package:delivery_app/views/global_views/custom_button_view.dart';
import 'package:delivery_app/views/global_views/custom_text_field_login_view.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool changeIcon = true;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_outlined,
              size: 20, color: CustomColors.blackTextColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image(
                  image: CustomImages.deliver2,
                  fit: BoxFit.cover,
                  height: size * .4),
              const Text(CustomStrings.login, style: CustomFonts.loginStyle),
              SizedBox(height: size * .015),
              Text(CustomStrings.enterYourDetails,
                  style: CustomFonts.enterYourDetailsStyle),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size * .025),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// #email
                    CustomTextFieldLogin(
                      text: CustomStrings.email,
                      textStyle: CustomFonts.labelTextStyle,
                    ),

                    /// #Password Text Field
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
                        counterText: CustomStrings.forgotPassword,
                        counterStyle:
                            const TextStyle(color: CustomColors.orangeButton),
                      ),
                    ),
                    SizedBox(height: size * .035),
                  ],
                ),
              ),
              CustomButton(
                  size: size,
                  buttonColor: CustomColors.orangeButton,
                  text: CustomStrings.loginNow,
                  onPressed: () {}),
              SizedBox(height: size * .015),
              RichText(
                text: const TextSpan(
                  text: CustomStrings.doNotHaveAccount,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: CustomFonts.Nunito,
                    color: CustomColors.blackTextColor,
                  ),
                  children: [
                    TextSpan(
                      text: CustomStrings.createNewAccount,
                      style: TextStyle(color: CustomColors.orangeButton),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
