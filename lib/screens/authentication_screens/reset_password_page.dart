import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';
import 'package:task1/reusable/validator.dart';
import 'package:task1/reusable/widgets/app_text_form_field.dart';
import 'package:task1/reusable/widgets/app_yellow_button.dart';
import 'package:task1/screens/home_page.dart';

class ResetPasswordPage extends StatelessWidget {
  ResetPasswordPage({super.key});

  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      appBar: appBarBack(onPressed: () {}),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 56.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'NAKHLAH',
                style: myTextStyle(50.sp, FontWeight.bold, greenClr),
              ),
              Gap(15.h),
              Text(
                'Reset Password',
                style: myTextStyle(25.sp, FontWeight.bold, textClr),
              ),
              Gap(96.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'New password',
                    style: myTextStyle(25.sp, FontWeight.normal, textClr),
                  )),
              AppTextFormField(
                hintText: '*********',
                controller: _newPasswordController,
                validator: passwordValidator,
              ),
              Gap(24.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Confirm New password',
                    style: myTextStyle(25.sp, FontWeight.normal, textClr),
                  )),
              AppTextFormField(
                hintText: '*********',
                controller: _confirmPasswordController,
                validator: passwordValidator,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.verified,
                    size: 20.sp,
                    color: greenClr,
                  ),
                ),
              ),
              Gap(60.h),
              AppYellowButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
              }, buttonName: 'Continue'),
            ],
          ),
        ),
      ),
    );
  }
}
