import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_form/utils/utils.dart';

class SignFormField extends StatelessWidget {
  SignFormField({
    this.controller,
    this.hintText,
    this.password,
  });

  final TextEditingController? controller;
  final String? hintText;
  final bool? password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenPortrait() ? 0.05.sw : 0.03.sw,
        vertical: 0.01.sh,
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: theme(context).textTheme.bodyText1!.color,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: theme(context).buttonColor),
          ),
        ),
        obscureText: password ?? false,
        style: TextStyle(
          color: theme(context).textTheme.headline1!.color,
        ),
      ),
    );
  }
}
