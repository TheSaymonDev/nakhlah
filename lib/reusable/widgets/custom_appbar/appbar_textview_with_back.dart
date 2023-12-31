
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';

class AppbarTextviewWithBack extends StatelessWidget implements PreferredSizeWidget {

  const AppbarTextviewWithBack({super.key, required this.onPressedBack, this.title});

  final void Function()? onPressedBack;
  final String? title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundClr,
      elevation: 0,
      centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SizedBox(
              height: 32.h,
              width: 32.w,
              child: SvgPicture.asset(
                'assets/images/back.svg',
                fit: BoxFit.fitHeight,
              ),
            )),
      title: title != null
          ? Text(title!, style: myTextStyle(30.sp, FontWeight.bold, greenClr))
          : null, // Use null if title is not provided
    );
  }
}
