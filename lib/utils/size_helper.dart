import 'package:flutter/material.dart';

double screenHeight(BuildContext context) {
  final mediaQueryHeight = MediaQuery.of(context).size.height;
  return mediaQueryHeight;
}

double screenWidth(BuildContext context) {
  final mediaQueryWidth = MediaQuery.of(context).size.width;
  return mediaQueryWidth;
}
