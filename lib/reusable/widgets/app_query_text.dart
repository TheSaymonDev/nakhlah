import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';

class AppQueryText extends StatelessWidget {
  const AppQueryText({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(name, style: myTextStyle(25.sp, FontWeight.normal, textClr),);
  }
}
