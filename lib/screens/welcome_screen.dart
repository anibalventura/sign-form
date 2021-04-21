import 'package:flutter/material.dart';
import 'package:sign_form/utils/size_helper.dart';
import 'package:sign_form/widgets/round_button.dart';

class WelcomeScreen extends StatelessWidget {
  static final route = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome!',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: screenHeight(context) * 0.02),
            RoundButton(
              backgroundColor: Colors.blue,
              text: 'Logout',
              textColor: Colors.white,
              icon: Icons.logout,
              iconColor: Colors.white,
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
