import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';

class AppYellowButton extends StatelessWidget {
  const AppYellowButton({
    super.key,
    required this.onPressed,
    required this.buttonName,
  });

  final String buttonName;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 288.w,
      height: 62.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: yellowClr,
          foregroundColor: textClr,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: myTextStyle(25.sp, FontWeight.normal, textClr),
        ),
      ),
    );
  }
}
