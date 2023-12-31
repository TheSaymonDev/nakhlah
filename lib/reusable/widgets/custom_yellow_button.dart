import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';

class CustomYellowButton extends StatelessWidget {
  const CustomYellowButton({
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
          foregroundColor: backgroundClr,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
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
