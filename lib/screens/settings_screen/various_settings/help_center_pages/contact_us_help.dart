import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';

class ContactUsHelp extends StatelessWidget {
  const ContactUsHelp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(24.h),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          elevation: 8,
          color: backgroundClr,
          child: Container(
            height: 388.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: backgroundClr,
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListTile(
                    tileColor: backgroundClr,
                    onTap: () {},
                    leading: SvgPicture.asset(
                      'assets/images/service-contact.svg',
                      height: 30.h,
                      width: 30.w,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      'Customer Service',
                      style: myTextStyle(25.sp, FontWeight.normal, textClr),
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  child: ListTile(
                    tileColor: backgroundClr,
                    onTap: () {},
                    leading: SvgPicture.asset(
                      'assets/images/web-contact.svg',
                      height: 30.h,
                      width: 30.w,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      'Website',
                      style: myTextStyle(25.sp, FontWeight.normal, textClr),
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  child: ListTile(
                    tileColor: backgroundClr,
                    onTap: () {},
                    leading: SvgPicture.asset(
                      'assets/images/linkedin-contact.svg',
                      height: 30.h,
                      width: 30.w,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      'Linkedin',
                      style: myTextStyle(25.sp, FontWeight.normal, textClr),
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  child: ListTile(
                    tileColor: backgroundClr,
                    onTap: () {},
                    leading: SvgPicture.asset(
                      'assets/images/twitter-contact.svg',
                      height: 30.h,
                      width: 30.w,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      'Twitter',
                      style: myTextStyle(25.sp, FontWeight.normal, textClr),
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  child: ListTile(
                    tileColor: backgroundClr,
                    onTap: () {},
                    leading: SvgPicture.asset(
                      'assets/images/facebook-contact.svg',
                      height: 30.h,
                      width: 30.w,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      'Facebook',
                      style: myTextStyle(25.sp, FontWeight.normal, textClr),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
