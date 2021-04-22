import 'package:flutter/material.dart';
import 'package:sign_form/utils/size_helper.dart';
import 'package:sign_form/utils/themes.dart';
import 'package:sign_form/widgets/round_button.dart';

class WelcomeScreen extends StatelessWidget {
  static final route = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: screenWidth(context) * 0.6,
          height: screenHeight(context) * 0.4,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome!',
                  style: appTheme(context).textTheme.headline1,
                ),
                SizedBox(height: screenHeight(context) * 0.02),
                RoundButton(
                  text: 'Logout',
                  icon: Icons.logout,
                  onTap: () => Navigator.of(context).pop(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
