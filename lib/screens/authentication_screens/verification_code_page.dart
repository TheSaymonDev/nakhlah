import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_appbar/appbar_textview_with_back.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_yellow_button.dart';
import 'package:nakhlah_education_app/screens/authentication_screens/reset_password_page.dart';
import 'package:nakhlah_education_app/screens/authentication_screens/successfully_page.dart';

class VerificationCodePage extends StatelessWidget {
  VerificationCodePage({super.key});

  final _pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      appBar: AppbarTextviewWithBack(onPressedBack: (){Get.back();}),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'NAKHLAH',
                style: myTextStyle(50.sp, FontWeight.bold, greenClr),
              ),
              Gap(15.h),
              Text(
                'Enter verification code',
                style: myTextStyle(30.sp, FontWeight.bold, textClr),
              ),
              Gap(80.h),
              Text(
                'We sent a 6 digit code to 88********69',
                style: myTextStyle(20.sp, FontWeight.normal, textClr),
              ),
              Gap(56.h),
              PinCodeTextField(
                appContext: context,
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                animationDuration: const Duration(milliseconds: 300),
                pinTheme: pinTheme(),
                onCompleted: (v) {
                },
                onChanged: (value) {
                },
              ),
              Gap(35.h),
              CustomYellowButton(onPressed: (){
                Get.to(()=>ResetPasswordPage());
              }, buttonName: 'Continue'),
              Gap(32.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't received a code?",
                    style: myTextStyle(20.sp, FontWeight.normal, textClr),
                  ),
                  Gap(8.w),
                  GestureDetector(
                    onTap: (){},
                    child: Text(
                      'Resend Code',
                      style:
                      myTextStyle(25.sp, FontWeight.bold, greenClr),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
