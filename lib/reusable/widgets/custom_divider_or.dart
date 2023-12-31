import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';

class CustomDividerOr extends StatelessWidget {
  const CustomDividerOr({super.key});

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
