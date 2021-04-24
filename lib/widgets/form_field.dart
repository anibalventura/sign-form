import 'package:flutter/material.dart';
import 'package:sign_form/utils/themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        horizontal: 0.03.sw,
        vertical: 0.01.sh,
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: appTheme(context).textTheme.bodyText1!.color,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: appTheme(context).buttonColor),
          ),
        ),
        obscureText: password ?? false,
        style: TextStyle(
          color: appTheme(context).textTheme.headline1!.color,
        ),
      ),
    );
  }
}
