import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task1/reusable/colors.dart';

TextStyle myTextStyle(double fSize, FontWeight fWeight, Color clr) {
  return TextStyle(
    fontSize: fSize,
    fontWeight: fWeight,
    color: clr,
    fontFamily: 'Gumela Arabic',
    height: 1
  );
}

ButtonStyle myElevatedButtonStyle() {
  return ElevatedButton.styleFrom(
      backgroundColor: yellowClr,
      foregroundColor: textClr,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)));
}

myToastMessage({required String message}) {
  return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 4,
      backgroundColor: greenClr,
      textColor: backgroundClr,
      fontSize: 16);
}

AppBar appBarBack({required void Function()? onPressed}) {
  return AppBar(
    toolbarHeight: 55.h,
    backgroundColor: backgroundClr,
    elevation: 0,
    leading: IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          'assets/images/back.svg',
          fit: BoxFit.cover,
          height: 35.h,
          width: 35.w,
        )),
  );
}

PinTheme pinTheme() {
  return PinTheme(
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(5.r),
    borderWidth: 4.w,
    inactiveFillColor: filledClr,
    selectedFillColor: backgroundClr,
    fieldHeight: 60.h,
    fieldWidth: 60.w,
    activeColor: Colors.black,
    selectedColor: Colors.blue,
    inactiveColor: Colors.black,
  );
}

DropdownButton<String> customDropDownButton(
    {required void Function(String?)? onChanged,
      required List<DropdownMenuItem<String>>? items}) {
  return DropdownButton(
    icon: Icon(
      Icons.keyboard_arrow_down,
      color: greenClr,
    ),
    iconSize: 30.sp,
    elevation: 4,
    underline: const SizedBox(
      height: 0,
    ),
    items: items,
    onChanged: onChanged,
  );
}

BoxDecoration decorationStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(12.r),
    color: filledClr,
  );
}
