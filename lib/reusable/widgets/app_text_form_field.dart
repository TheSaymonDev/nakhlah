import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/reusable/colors.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      this.suffixIcon,
      this.obscureText = false,
      this.readOnly = false,
      this.validator,
      this.keyBoardType,
      required this.hintText,
      required this.controller});

  final Widget? suffixIcon;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText, readOnly;
  final String? Function(String?)? validator;
  final TextInputType? keyBoardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 318.w,
      child: TextFormField(
        readOnly: readOnly,
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        cursorColor: textClr,
        keyboardType: keyBoardType,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: suffixIcon,
          ),
          hintText: hintText,
          fillColor: filledClr,
          filled: true,
          focusColor: textClr,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: textClr, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: textClr, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
