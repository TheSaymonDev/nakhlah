import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';
import 'package:nakhlah_education_app/reusable/validator.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_divider_or.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_sign_in_with_button.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_text_form_field.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_yellow_button.dart';
import 'package:nakhlah_education_app/screens/authentication_screens/sign_in_page.dart';
import 'package:nakhlah_education_app/screens/bottom_nav_bar_screens/bottom_nav_bar_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isObscure = true;
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                      'Registration',
                      style: myTextStyle(25.sp, FontWeight.bold, textClr),
                    ),
                    Gap(60.h),
                    CustomTextFormField(
                      hintText: 'Name',
                      controller: _nameController,
                      validator: nameValidator,
                    ),
                    Gap(20.h),
                    CustomTextFormField(
                      hintText: 'Email',
                      controller: _emailController,
                      validator: emailValidator,
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
                    Gap(20.h),
                    CustomYellowButton(
                      onPressed: () {
                        // if (_formKey.currentState!.validate()) {
                        //   final registrationModel = RegistrationModel(
                        //       name: _nameController.text,
                        //       email: _emailController.text,
                        //       password: _passwordController.text);
                        //   ApiClient.registerUserPost(
                        //       registrationModel, context);
                        // }
                       Get.to(()=>const BottomNavBarPage());
                      },
                      buttonName: 'Sign up',
                    ),
                    Gap(25.h),
                    const CustomDividerOr(),
                    Gap(25.h),
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
                    Gap(40.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have account?',
                          style: myTextStyle(20.sp, FontWeight.normal, textClr),
                        ),
                        Gap(8.w),
                        GestureDetector(
                          onTap: (){
                            Get.to(()=>const SignInPage());
                          },
                          child: Text(
                            'Login',
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
