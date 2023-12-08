import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/widgets/app_query_container.dart';
import 'package:task1/reusable/widgets/app_query_text.dart';

class LanguageQuery extends StatelessWidget {
  const LanguageQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppQueryText(name: 'What is your language?'),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  height: 152.h,
                  width: 152.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: containerBorderClr, width: 4.w),
                    image: DecorationImage(image: AssetImage('assets/images/english.png'), fit: BoxFit.cover)
                  ),
                ),
                Gap(50.h),
                const AppQueryText(name: 'English'),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  height: 152.h,
                  width: 152.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: containerBorderClr, width: 4.w),
                      image: DecorationImage(image: AssetImage('assets/images/bangla.png'), fit: BoxFit.cover)
                  ),
                ),
                Gap(50.h),
                const AppQueryText(name: 'বাংলা'),
              ],
            ),
          ],
        ),
        Spacer()
      ],
    );
  }
}
