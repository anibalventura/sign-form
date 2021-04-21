import 'package:flutter/material.dart';
import 'package:sign_form/screens/welcome_screen.dart';
import 'package:sign_form/widgets/progress_indicator.dart';
import 'package:sign_form/widgets/form_field.dart';

class SignUpScreen extends StatelessWidget {
  static final route = '/';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          width: mediaQuery.width * 0.5,
          child: Card(
            child: SignUpForm(),
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
    final mediaQuery = MediaQuery.of(context).size;

    return Form(
      onChanged: _updateFormProgress,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedProgressIndicator(value: _formProgress),
          Padding(
            padding: EdgeInsets.only(top: mediaQuery.width * 0.02),
            child: Text(
              'Sign up',
              style: Theme.of(context).textTheme.headline4,
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
            padding: EdgeInsets.symmetric(vertical: mediaQuery.width * 0.01),
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                  return states.contains(MaterialState.disabled)
                      ? null
                      : Colors.white;
                }),
                backgroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                  return states.contains(MaterialState.disabled)
                      ? null
                      : Colors.blue;
                }),
              ),
              onPressed: _formProgress == 1 ? _showWelcomeScreen : null,
              child: Text('Sign up'),
            ),
          ),
        ],
      ),
    );
  }
}
