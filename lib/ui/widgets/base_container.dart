import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_form/utils/utils.dart';

class BaseContainer extends StatelessWidget {
  BaseContainer({
    required this.child,
    this.topHeight,
  });

  final Widget? child;
  final double? topHeight;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: constraints.copyWith(
            minHeight: constraints.maxHeight,
            maxHeight: double.infinity,
          ),
          child: IntrinsicHeight(
            child: Column(
              children: [
                SizedBox(height: topHeight),
                child!,
                SizedBox(height: 0.1.sh),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      color: theme(context).cardColor,
                      padding: EdgeInsets.symmetric(
                        vertical: screenPortrait() ? 0.01.sh : 0.02.sh,
                      ),
                      child: Text(
                        '© ${DateTime.now().year} Anibal Ventura',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: theme(context).textTheme.headline1!.color,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
