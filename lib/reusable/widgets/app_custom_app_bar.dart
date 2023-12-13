import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';

class AppCustomAppBar extends StatelessWidget {
   AppCustomAppBar({super.key, this.title});

   String? title;
   
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: backgroundClr,
      leading: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/images/back.svg', height: 30.h, width: 30.w, fit: BoxFit.fill,)),
      title: Text(title!, style: myTextStyle(30.sp, FontWeight.bold, greenClr),),
      actions: [
        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/images/profile-img.svg', height: 30.h, width: 30.w, fit: BoxFit.fill,))
      ]
    );
  }
}
