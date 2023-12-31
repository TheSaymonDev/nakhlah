import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';

class CustomSignInWithButton extends StatelessWidget {
  const CustomSignInWithButton(
      {super.key,
      required this.onPressed,
      required this.imgUrl,
      required this.name});

  final void Function()? onPressed;
  final String imgUrl, name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      width: 318.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: filledClr,
            foregroundColor: backgroundClr,
            side: BorderSide(color: textClr.withOpacity(0.5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imgUrl,
              height: 35.h,
              width: 35.w,
              fit: BoxFit.cover,
            ),
            Gap(18.w),
            Text(
              name,
              style: myTextStyle(20.sp, FontWeight.normal, textClr),
            )
          ],
        ),
      ),
    );
  }
}
