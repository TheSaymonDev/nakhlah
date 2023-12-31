import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';

class AppLinearProgress extends StatelessWidget {
  AppLinearProgress({super.key, required this.progressValue});

  double progressValue;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: progressValue.toDouble(),
      backgroundColor: Colors.grey,
      color: greenClr,
      borderRadius: BorderRadius.circular(4.r),
    );
  }
}
