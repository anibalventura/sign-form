import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

ThemeData theme(BuildContext context) => Theme.of(context);

bool screenPortrait() =>
    ScreenUtil().orientation == Orientation.portrait ? true : false;
