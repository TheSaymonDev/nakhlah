import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task1/api/api_client.dart';
import 'package:task1/models/log_in_model.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';
import 'package:task1/reusable/validator.dart';
import 'package:task1/reusable/widgets/app_divider_or.dart';
import 'package:task1/reusable/widgets/app_sign_in_with_button.dart';
import 'package:task1/reusable/widgets/app_text_form_field.dart';
import 'package:task1/reusable/widgets/app_yellow_button.dart';
import 'package:task1/screens/authentication_screens/forgot_password_page.dart';
import 'package:task1/screens/authentication_screens/sign_up_page.dart';
import 'package:task1/screens/authentication_screens/verification_page.dart';
import 'package:task1/screens/home_and_profile_screens/bottom_nav_bar_page.dart';
import 'package:task1/screens/home_page.dart';

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
                    Gap(85.h),
                    AppTextFormField(
                      hintText: 'Email or username or pho...',
                      controller: _identifierController,
                      validator: identifierValidator,
                    ),
                    Gap(20.h),
                    AppTextFormField(
                      hintText: 'Password',
                      controller: _passwordController,
                      validator: identifierValidator,
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
                      alignment: Alignment.centerRight,
                      width: 318.w,
                      child: TextButton(
                          onPressed: () {
                            //myToastMessage(message: 'Forgot Password Called');
                            Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationPage(),));
                          },
                          child: Text(
                            'Forgot Password',
                            style: myTextStyle(25.sp, FontWeight.normal, textClr),
                          )),
                    ),
                    Gap(20.h),
                    AppYellowButton(
                      onPressed: () {
                        // if (_formKey.currentState!.validate()) {
                        //   final logInModel = LogInModel(
                        //       identifier: _identifierController.text,
                        //       password: _passwordController.text);
                        //   ApiClient.logInUserPost(logInModel, context);
                        // }
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBarPage(),));
                      },
                      buttonName: 'Sign in',
                    ),
                    Gap(25.h),
                    const AppDividerOr(),
                    Gap(45.h),
                    AppSignInWithButton(
                        onPressed: () {
                          myToastMessage(message: 'Continue with Facebook');
                        },
                        imgUrl: 'assets/images/facebook.svg',
                        name: 'Continue with Facebook'),
                    Gap(10.h),
                    AppSignInWithButton(
                        onPressed: () {
                          myToastMessage(message: 'Continue with Twitter');
                        },
                        imgUrl: 'assets/images/twitter.svg',
                        name: 'Continue with Twitter'),
                    Gap(10.h),
                    AppSignInWithButton(
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
                          'Dont have an account?',
                          style: myTextStyle(20.sp, FontWeight.normal, textClr),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(),));
                            },
                            child: Text(
                              'Create Account',
                              style:
                              myTextStyle(25.sp, FontWeight.bold, greenClr),
                            )),
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
