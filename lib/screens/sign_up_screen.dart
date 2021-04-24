import 'package:flutter/material.dart';
import 'package:sign_form/screens/welcome_screen.dart';
import 'package:sign_form/widgets/progress_indicator.dart';
import 'package:sign_form/widgets/form_field.dart';
import 'package:sign_form/widgets/round_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  static final route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 0.7.sw,
            child: Card(
              child: SignUpForm(),
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _usernameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  double _formProgress = 0;

  void _showWelcomeScreen() {
    Navigator.of(context).pushNamed(WelcomeScreen.route);
  }

  void _updateFormProgress() {
    var progress = 0.0;
    final controllers = [
      _firstNameTextController,
      _lastNameTextController,
      _usernameTextController,
      _passwordTextController,
    ];

    for (final controller in controllers) {
      if (controller.value.text.isNotEmpty) {
        progress += 1 / controllers.length;
      }
    }

    setState(() {
      _formProgress = progress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      onChanged: _updateFormProgress,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedProgressIndicator(value: _formProgress),
          Padding(
            padding: EdgeInsets.only(top: 0.02.sh),
            child: Text(
              'Sign up',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          SignFormField(
            controller: _firstNameTextController,
            hintText: 'First name',
          ),
          SignFormField(
            controller: _lastNameTextController,
            hintText: 'Last name',
          ),
          SignFormField(
            controller: _usernameTextController,
            hintText: 'Username',
          ),
          SignFormField(
            controller: _passwordTextController,
            hintText: 'Password',
            password: true,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0.02.sw),
            child: RoundButton(
              text: 'Sign up',
              icon: Icons.login,
              onTap: () {
                _formProgress == 1
                    ? _showWelcomeScreen()
                    : ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please fill all the fields.'),
                          duration: Duration(seconds: 2),
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
