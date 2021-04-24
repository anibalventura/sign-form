import 'package:flutter/material.dart';
import 'package:sign_form/utils/themes.dart';
import 'package:sign_form/widgets/round_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  static final route = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 0.6.sw,
          height: 0.4.sh,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome!',
                  style: appTheme(context).textTheme.headline1,
                ),
                SizedBox(height: 0.02.sh),
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
