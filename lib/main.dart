import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:task1/screens/home_page.dart';
import 'package:task1/screens/onboarding_screens/onboarding_page.dart';
import 'package:task1/screens/query_screens/query_page.dart';
import 'package:task1/screens/user_profile_screens/account_settings_screens/account_settings_page.dart';

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
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child:  AccountSettingsPage(),
    );
  }
}
