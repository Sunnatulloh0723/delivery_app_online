



import 'package:delivery_app/screens/home_screen.dart';
import 'package:delivery_app/screens/login_screen.dart';
import 'package:delivery_app/screens/otp_screen.dart';
import 'package:delivery_app/screens/screen_one.dart';
import 'package:delivery_app/screens/screen_two.dart';
import 'package:delivery_app/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      initialRoute: "/homeScreen",
      routes: {
        "/homeScreen": (context) => const HomeScreen(),
        "/screenOne": (context) => const ScreenOne(),
        "/screenTwo": (context) => const ScreenTwo(),
        "/OTPScreen": (context) => const OTPScreen(),
        "/LoginScreen": (context) => const LoginScreen(),
        "/SignUpScreen": (context) => const SignUpScreen(),
      },
    );
  }
}
