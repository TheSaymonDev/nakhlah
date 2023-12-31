import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_appbar/appbar_textview_with_back.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_text_form_field.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_yellow_button.dart';
import 'package:nakhlah_education_app/screens/authentication_screens/verification_code_page.dart';

class VerificationPage extends StatelessWidget {
  VerificationPage({super.key});

  final _emailOrPhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      appBar: AppbarTextviewWithBack(onPressedBack: (){
        Get.back();
      }),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.w),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'NAKHLAH',
                style: myTextStyle(50.sp, FontWeight.bold, greenClr),
              ),
              Gap(15.h),
              Text(
                'Mobile Number',
                style: myTextStyle(25.sp, FontWeight.bold, textClr),
              ),
              Gap(28.h),
              Text(
                'Please enter your mobile number or email to received verification code',
                style: myTextStyle(20.sp, FontWeight.normal, Colors.grey),
              ),
              Gap(28.h),
              Text(
                'Enter your contact information',
                style: myTextStyle(25.sp, FontWeight.bold, textClr),
              ),
              Gap(28.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email or mobile number',
                  style: myTextStyle(20.sp, FontWeight.bold, textClr),
                ),
              ),
              Gap(20.h),
              CustomTextFormField(
                  hintText: 'Enter your email or mobile number',
                  controller: _emailOrPhoneController),
              Gap(40.h),
              CustomYellowButton(
                  onPressed: () {
                   Get.to(()=>VerificationCodePage());
                  },
                  buttonName: 'Send'),
            ],
          ),
        ),
      ),
    );
  }
}
