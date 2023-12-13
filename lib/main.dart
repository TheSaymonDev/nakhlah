import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/screens/authentication_screens/reset_password_page.dart';
import 'package:task1/screens/authentication_screens/sign_in_page.dart';
import 'package:task1/screens/authentication_screens/sign_up_page.dart';
import 'package:task1/screens/authentication_screens/verification_code_page.dart';
import 'package:task1/screens/authentication_screens/verification_page.dart';
import 'package:task1/screens/home_and_profile_screens/bottom_nav_bar_page.dart';
import 'package:task1/screens/home_and_profile_screens/help_center_page.dart';
import 'package:task1/screens/home_and_profile_screens/profile_update_page.dart';
import 'package:task1/screens/home_page.dart';
import 'package:task1/screens/onboarding_screens/onboarding_page.dart';
import 'package:task1/screens/query_screens/query_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(430, 932),
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child:  OnboardingPage(),
    );
  }
}
