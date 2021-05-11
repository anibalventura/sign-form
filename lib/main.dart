import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_form/ui/screens/sign_up_screen.dart';
import 'package:sign_form/ui/screens/welcome_screen.dart';
import 'package:sign_form/utils/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(SignUpApp());
}

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'Sign Form',
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        routes: {
          SignUpScreen.route: (context) => SignUpScreen(),
          WelcomeScreen.route: (context) => WelcomeScreen(),
        },
      ),
    );
  }
}
