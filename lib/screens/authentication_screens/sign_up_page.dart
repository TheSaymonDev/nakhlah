import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task1/api/api_client.dart';
import 'package:task1/models/registration_model.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';
import 'package:task1/reusable/validator.dart';
import 'package:task1/reusable/widgets/app_divider_or.dart';
import 'package:task1/reusable/widgets/app_sign_in_with_button.dart';
import 'package:task1/reusable/widgets/app_text_form_field.dart';
import 'package:task1/reusable/widgets/app_yellow_button.dart';
import 'package:task1/screens/authentication_screens/sign_in_page.dart';
import 'package:task1/screens/bottom_nav_bar_screens/bottom_nav_bar_page.dart';
import 'package:task1/screens/home_page.dart';

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
                    AppTextFormField(
                      hintText: 'Name',
                      controller: _nameController,
                      validator: nameValidator,
                    ),
                    Gap(20.h),
                    AppTextFormField(
                      hintText: 'Email',
                      controller: _emailController,
                      validator: emailValidator,
                    ),
                    Gap(20.h),
                    AppTextFormField(
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
                    AppYellowButton(
                      onPressed: () {
                        // if (_formKey.currentState!.validate()) {
                        //   final registrationModel = RegistrationModel(
                        //       name: _nameController.text,
                        //       email: _emailController.text,
                        //       password: _passwordController.text);
                        //   ApiClient.registerUserPost(
                        //       registrationModel, context);
                        // }
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBarPage(),));
                      },
                      buttonName: 'Sign up',
                    ),
                    Gap(25.h),
                    const AppDividerOr(),
                    Gap(25.h),
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
                          'Already have account?',
                          style: myTextStyle(20.sp, FontWeight.normal, textClr),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage(),));
                            },
                            child: Text(
                              'Login',
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
