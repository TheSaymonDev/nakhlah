import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';
import 'package:task1/reusable/widgets/app_yellow_button.dart';
import 'package:task1/screens/authentication_screens/reset_password_page.dart';
import 'package:task1/screens/authentication_screens/successfully_page.dart';

class VerificationCodePage extends StatelessWidget {
  VerificationCodePage({super.key});

  final _pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBack(onPressed: () {
        Navigator.pop(context);
      }),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15.w),
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
              Gap(96.h),
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
                animationDuration: Duration(milliseconds: 300),
               // enableActiveFill: true,
                pinTheme: pinTheme(),
                onCompleted: (v) {
                },
                onChanged: (value) {
                },
              ),
              Gap(35.h),
              AppYellowButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordPage(),));
              }, buttonName: 'Continue'),
              Gap(32.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didnt received a code?',
                    style: myTextStyle(20.sp, FontWeight.normal, textClr),
                  ),
                  TextButton(
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessfullyPage(),));
                      },
                      child: Text(
                        'Resend Code',
                        style:
                        myTextStyle(25.sp, FontWeight.bold, greenClr),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
