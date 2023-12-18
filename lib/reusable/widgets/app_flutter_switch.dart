import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:task1/reusable/colors.dart';

class AppFlutterSwitch extends StatelessWidget {
  AppFlutterSwitch({super.key, required this.onToggle, required this.value});

   void Function(bool) onToggle;
   bool value;

  @override
  Widget build(BuildContext context) {
    return   FlutterSwitch(
      activeColor: greenClr,
      inactiveColor: Colors.grey,
      width: 46.0.w,
      height: 25.0.h,
      toggleSize: 20.0.sp,
      borderRadius: 30.0.r,
      padding: 4.0.w,
      value: value,
      onToggle: onToggle,
    );
  }
}
