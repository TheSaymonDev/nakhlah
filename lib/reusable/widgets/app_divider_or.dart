import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';

class AppDividerOr extends StatelessWidget {
  const AppDividerOr({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(
          child: Divider(
            endIndent: 12,
          ),
        ),
        Text('Or',  style: myTextStyle(20.sp, FontWeight.bold, textClr),),
        const Expanded(
          child: Divider(
            indent: 12,
          ),
        ),
      ],
    );
  }
}
