import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:nakhlah_education_app/api/api_client.dart';
import 'package:nakhlah_education_app/models/log_in_model.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';
import 'package:nakhlah_education_app/reusable/validator.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_divider_or.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_sign_in_with_button.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_text_form_field.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_yellow_button.dart';
import 'package:nakhlah_education_app/screens/authentication_screens/reset_password_page.dart';
import 'package:nakhlah_education_app/screens/authentication_screens/sign_up_page.dart';
import 'package:nakhlah_education_app/screens/authentication_screens/verification_page.dart';
import 'package:nakhlah_education_app/screens/bottom_nav_bar_screens/bottom_nav_bar_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _identifierController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text(
                      'NAKHLAH',
                      style: myTextStyle(50.sp, FontWeight.bold, greenClr),
                    ),
                    Gap(15.h),
                    Text(
                      'Login',
                      style: myTextStyle(25.sp, FontWeight.bold, textClr),
                    ),
                    Gap(70.h),
                    CustomTextFormField(
                      hintText: 'Email or username or pho...',
                      controller: _identifierController,
                      validator: identifierValidator,
                    ),
                    Gap(20.h),
                    CustomTextFormField(
                      hintText: 'Password',
                      controller: _passwordController,
                      validator: passwordValidator,
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          icon: Icon(
                            isObscure ? Icons.visibility_off : Icons.visibility,
                            color: Colors.grey,
                          )),
                      obscureText: isObscure,
                    ),
                    Gap(15.h),
                    Container(
                      width: 318.w,
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: (){
                          Get.to(()=>VerificationPage());
                        },
                        child: Text(
                          'Forgot Password?',
                          style: myTextStyle(25.sp, FontWeight.normal, textClr),
                        ),
                      ),
                    ),
                    Gap(20.h),
                    CustomYellowButton(
                      onPressed: () {
                        // if (_formKey.currentState!.validate()) {
                        //   final logInModel = LogInModel(
                        //       identifier: _identifierController.text,
                        //       password: _passwordController.text);
                        //   ApiClient.logInUserPost(logInModel, context);
                        // }
                        Get.to(()=>const BottomNavBarPage());
                      },
                      buttonName: 'Sign in',
                    ),
                    Gap(25.h),
                    const CustomDividerOr(),
                    Gap(45.h),
                    CustomSignInWithButton(
                        onPressed: () {
                          myToastMessage(message: 'Continue with Facebook');
                        },
                        imgUrl: 'assets/images/facebook.svg',
                        name: 'Continue with Facebook'),
                    Gap(10.h),
                    CustomSignInWithButton(
                        onPressed: () {
                          myToastMessage(message: 'Continue with Twitter');
                        },
                        imgUrl: 'assets/images/twitter.svg',
                        name: 'Continue with Twitter'),
                    Gap(10.h),
                    CustomSignInWithButton(
                        onPressed: () {
                          myToastMessage(message: 'Continue with Google');
                        },
                        imgUrl: 'assets/images/google.svg',
                        name: 'Continue with Google'),
                    Gap(25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: myTextStyle(20.sp, FontWeight.normal, textClr),
                        ),
                        Gap(8.w),
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>const SignUpPage());
                          },
                          child: Text(
                            'Create Account',
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
          )),
    );
  }
}
