import 'package:flutter/material.dart';
import 'package:sign_form/ui/widgets/base_container.dart';
import 'package:sign_form/ui/widgets/round_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_form/utils/utils.dart';

class WelcomeScreen extends StatelessWidget {
  static final route = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BaseContainer(
          topHeight: 0.2.sh,
          child: Container(
            width: screenPortrait() ? 0.6.sw : 0.4.sw,
            height: 0.4.sh,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome!',
                    style: theme(context).textTheme.headline1,
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
      ),
    );
  }
}
