import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BronzeLevel extends StatelessWidget {
  const BronzeLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
       children: [
         Gap(25.h),
         Container(
           height: 240.h,
           width: double.infinity,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12.r),
             image: const DecorationImage(image: AssetImage('assets/images/lock-bg.png'), fit: BoxFit.cover),
           ),
         )
       ],
      ),
    );
  }
}
