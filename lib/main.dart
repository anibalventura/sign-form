import 'package:flutter/material.dart';
import 'package:sign_form/screens/sign_up_screen.dart';
import 'package:sign_form/screens/welcome_screen.dart';

void main() => runApp(SignUpApp());

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Form',
      routes: {
        SignUpScreen.route: (context) => SignUpScreen(),
        WelcomeScreen.route: (context) => WelcomeScreen(),
      },
    );
  }
}
