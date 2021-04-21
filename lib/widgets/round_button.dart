import 'package:flutter/material.dart';
import 'package:sign_form/utils/size_helper.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    required this.text,
    this.icon,
    this.iconColor,
    this.backgroundColor,
    this.textColor,
    this.onTap,
  });

  final String? text;
  final IconData? icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? textColor;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.all(Radius.circular(10));

    return Material(
      color: backgroundColor,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onTap as void Function()?,
        borderRadius: borderRadius,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth(context) * 0.01,
            vertical: screenHeight(context) * 0.01,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) Icon(icon, color: iconColor),
              if (icon != null) SizedBox(width: screenWidth(context) * 0.01),
              Text(
                text!,
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
