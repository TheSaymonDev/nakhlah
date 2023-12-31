import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';
import 'package:nakhlah_education_app/reusable/widgets/app_flutter_switch.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_appbar/appbar_textview_with_back.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_yellow_button.dart';
import 'package:nakhlah_education_app/screens/authentication_screens/sign_in_page.dart';
import 'package:nakhlah_education_app/screens/settings_screen/various_settings/help_center_page.dart';
import 'package:nakhlah_education_app/screens/settings_screen/various_settings/language_page.dart';
import 'package:nakhlah_education_app/screens/settings_screen/various_settings/notification_page.dart';
import 'package:nakhlah_education_app/screens/settings_screen/various_settings/profile_update_page.dart';

class AccountSettingsPage extends StatefulWidget {
  const AccountSettingsPage({super.key});

  @override
  State<AccountSettingsPage> createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      appBar: AppbarTextviewWithBack(
        onPressedBack: () {
          Get.back();
        },
        title: 'Account Settings',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30.w,
        ),
        child: Center(
          child: Card(
            elevation: 8,
            color: backgroundClr,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Container(
              height: 685.h,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 15.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: backgroundClr,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  accountSettingsItems(
                      onTap: () {
                        Get.to(() => const ProfileUpdatePage());
                      },
                      iconUrl: 'assets/images/n-person.svg',
                      name: 'Edit Account'),
                  Divider(
                    color: filledClr,
                  ),
                  accountSettingsItems(
                      onTap: () {},
                      iconUrl: 'assets/images/n-verification.svg',
                      name: 'Account Verification'),
                  Divider(
                    color: filledClr,
                  ),
                  accountSettingsItems(
                      onTap: () {},
                      iconUrl: 'assets/images/n-subscription.svg',
                      name: 'Subscription'),
                  Divider(
                    color: filledClr,
                  ),
                  accountSettingsItems(
                      onTap: () {
                        Get.to(()=>const NotificationPage());
                      },
                      iconUrl: 'assets/images/n-notification.svg',
                      name: 'Notifications'),
                  Divider(
                    color: filledClr,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: InkWell(
                      onTap: () {
                        Get.to(()=>const LanguagePage());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 25.h,
                              width: 25.w,
                              child: SvgPicture.asset(
                                'assets/images/n-language.svg',
                                fit: BoxFit.fitHeight,
                              )),
                          Gap(15.w),
                          Text(
                            'Language',
                            style:
                                myTextStyle(25.sp, FontWeight.normal, textClr),
                          ),
                          const Spacer(),
                          Text(
                            'English',
                            style:
                                myTextStyle(25.sp, FontWeight.normal, textClr),
                          ),
                          Gap(8.w),
                          Icon(
                            Icons.arrow_forward,
                            size: 25.sp,
                            color: greenClr,
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: filledClr,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 25.h,
                            width: 25.w,
                            child: SvgPicture.asset(
                              'assets/images/n-theme.svg',
                              fit: BoxFit.fitHeight,
                            )),
                        Gap(15.w),
                        Text(
                          _isDarkMode == true ? 'Dark Mode' : 'Light Mode',
                          style: myTextStyle(25.sp, FontWeight.normal, textClr),
                        ),
                        const Spacer(),
                        AppFlutterSwitch(
                            onToggle: (value) {
                              setState(() {
                                _isDarkMode = value;
                              });
                            },
                            value: _isDarkMode),
                      ],
                    ),
                  ),
                  Divider(
                    color: filledClr,
                  ),
                  accountSettingsItems(
                      onTap: () {
                        Get.to(()=>const HelpCenterPage());
                      },
                      iconUrl: 'assets/images/n-help-center.svg',
                      name: 'Help Center'),
                  Divider(
                    color: filledClr,
                  ),
                  accountSettingsItems(
                      onTap: () {},
                      iconUrl: 'assets/images/n-about-us.svg',
                      name: 'About Nakhlah'),
                  Divider(
                    color: filledClr,
                  ),
                  accountSettingsItems(
                      onTap: () {
                        Get.bottomSheet(
                          Container(
                            height: 246.h,
                            width: double.infinity,
                            color: backgroundClr,
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.w,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 5.h,
                                  width: 60.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      color: greenClr),
                                ),
                                Text(
                                  'Logout',
                                  style: myTextStyle(
                                      25.sp, FontWeight.bold, textClr),
                                ),
                                Text(
                                  'Are you sure want to logout?',
                                  style: myTextStyle(
                                      25.sp, FontWeight.normal, textClr),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: CustomYellowButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            buttonName: 'Cancel')),
                                    Gap(30.w),
                                    Expanded(
                                        child: CustomYellowButton(
                                            onPressed: () {
                                              Get.offAll(()=>const SignInPage());
                                            },
                                            buttonName: 'Logout')),
                                  ],
                                )
                              ],
                            ),
                          ),
                          isDismissible: true,
                        );
                      },
                      iconUrl: 'assets/images/n-logout.svg',
                      name: 'Logout'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding accountSettingsItems(
      {required void Function()? onTap,
      required String iconUrl,
      required String name}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 25.h,
                width: 25.w,
                child: SvgPicture.asset(
                  iconUrl,
                  fit: BoxFit.fitHeight,
                )),
            Gap(15.w),
            Text(
              name,
              style: myTextStyle(25.sp, FontWeight.normal, textClr),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward,
              size: 25.sp,
              color: greenClr,
            )
          ],
        ),
      ),
    );
  }
}
