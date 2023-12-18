import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';
import 'package:task1/reusable/widgets/app_yellow_button.dart';
import 'package:task1/screens/bottom_nav_bar_screens/bottom_nav_bar_page.dart';

class SuccessfullyPage extends StatelessWidget {
  const SuccessfullyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Icon(Icons.verified_user_outlined, size: 100.sp, color: greenClr,),
              Gap(90.h),
              Text('Password Changed!', style: myTextStyle(30.sp, FontWeight.bold, greenClr),),
              Gap(28.h),
              Text('Your Password has been changed successfully', style: myTextStyle(20.sp, FontWeight.normal, textClr),),
              const Spacer(),
              AppYellowButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavBarPage(),));
              }, buttonName: 'Done'),
              Gap(40.h),
            ],
          ),
        ),
      ),
    );
  }
}
