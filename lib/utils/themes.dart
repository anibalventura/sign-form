import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData appTheme(BuildContext context) {
  return Theme.of(context);
}

class Themes {
  static String brightness(BuildContext context) {
    final Brightness mode = MediaQuery.platformBrightnessOf(context);
    return mode == Brightness.light ? 'light' : 'dark';
  }

  static final String? _fontFamily = GoogleFonts.roboto().fontFamily;

  static final AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
  );

  /*
  * Light Theme.
  */
  static const Color _lightPrimaryTextColor = Colors.black;
  static const Color _lightSecondaryTextColor = Colors.black54;
  static final Color? _lightBackgroundColor = Colors.white;
  static final Color _lightCardColor = Color(0xFFF8F8F8);
  static final Color _lightButtonColor = Color(0xFFe3e3e3);
  static final Color? _lightIconColor = Colors.black;

  static final TextStyle _lightHeadline1TextStyle = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w400,
      color: _lightPrimaryTextColor);
  static final TextStyle _lightBodyText1TextStyle = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: _lightSecondaryTextColor);

  static final TextStyle _lightSnackBarTextTheme = TextStyle(
    color: Colors.white,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );

  static final ThemeData lightTheme = ThemeData(
    appBarTheme: _appBarTheme,
    scaffoldBackgroundColor: _lightBackgroundColor,
    cardColor: _lightCardColor,
    buttonColor: _lightButtonColor,
    dialogTheme: DialogTheme(
      backgroundColor: _lightCardColor,
    ),
    colorScheme: ColorScheme.light(
      primary: _lightIconColor!,
    ),
    iconTheme: IconThemeData(
      color: _lightIconColor,
    ),
    textTheme: TextTheme(
      headline1: _lightHeadline1TextStyle,
      bodyText1: _lightBodyText1TextStyle,
    ),
    snackBarTheme: SnackBarThemeData(
      contentTextStyle: _lightSnackBarTextTheme,
    ),
    fontFamily: _fontFamily,
  );

  /*
  * Dark Theme.
  */
  static const Color _darkPrimaryTextColor = Colors.white;
  static const Color _darkSecondaryTextColor = Colors.white54;
  static final Color _darkBackgroundColor = Color(0xFF22252D);
  static final Color _darkCardColor = Color(0xFF292D36);
  static final Color _darkButtonColor = Color(0xFF22252D);
  static final Color? _darkIconColor = Colors.white;

  static final TextStyle _darkHeadline1TextStyle =
      _lightHeadline1TextStyle.copyWith(color: _darkPrimaryTextColor);
  static final TextStyle _darkBodyText1TextStyle =
      _lightBodyText1TextStyle.copyWith(color: _darkSecondaryTextColor);

  static final TextStyle _darkSnackBarTextTheme =
      _lightSnackBarTextTheme.copyWith(
    color: Colors.black,
  );

  static final ThemeData darkTheme = ThemeData(
    appBarTheme: _appBarTheme,
    scaffoldBackgroundColor: _darkBackgroundColor,
    cardColor: _darkCardColor,
    buttonColor: _darkButtonColor,
    dialogTheme: DialogTheme(
      backgroundColor: _darkCardColor,
    ),
    colorScheme: ColorScheme.light(
      onSurface: _darkPrimaryTextColor,
    ),
    iconTheme: IconThemeData(
      color: _darkIconColor,
    ),
    textTheme: TextTheme(
      headline1: _darkHeadline1TextStyle,
      bodyText1: _darkBodyText1TextStyle,
    ),
    snackBarTheme: SnackBarThemeData(
      contentTextStyle: _darkSnackBarTextTheme,
    ),
    fontFamily: _fontFamily,
  );
}
