import 'package:flutter/material.dart';
import 'package:sign_form/utils/themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    required this.text,
    this.icon,
    this.onTap,
  });

  final String? text;
  final IconData? icon;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.all(Radius.circular(5.r));

    return Material(
      color: appTheme(context).buttonColor,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onTap as void Function()?,
        borderRadius: borderRadius,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 0.02.sw,
            vertical: 0.01.sh,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) Icon(icon),
              if (icon != null) SizedBox(width: 0.01.sw),
              Text(
                text!,
                style: TextStyle(
                  color: appTheme(context).textTheme.headline1!.color,
                  fontSize: appTheme(context).textTheme.bodyText1!.fontSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
