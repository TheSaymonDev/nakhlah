import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';

class AppQueryContainer extends StatelessWidget {
  const AppQueryContainer({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      height: 152.h,
      width: 152.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundClr,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: containerBorderClr, width: 4.w),
      ),
      child: SvgPicture.asset(imgUrl),
    );
  }
}
