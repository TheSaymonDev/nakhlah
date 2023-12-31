import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';
import 'package:nakhlah_education_app/screens/game_screen/game_page.dart';
import 'package:nakhlah_education_app/screens/home_screen/home_page.dart';
import 'package:nakhlah_education_app/screens/leader_board_screen/leader_board_page.dart';
import 'package:nakhlah_education_app/screens/settings_screen/account_settings_page.dart';
import 'package:nakhlah_education_app/screens/target_screens/target_page.dart';
import 'package:nakhlah_education_app/screens/account_screen/account_page.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _currentIndex = 0;
  final List<Widget> _pageList = [
    HomePage(),
    const LeaderBoardPage(),
    const TargetPage(),
    const GamePage(),
    const AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      appBar: AppBar(
        backgroundColor: backgroundClr,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        // leading: _currentIndex > 0
        //     ? IconButton(
        //         onPressed: () {
        //           setState(() {
        //             _currentIndex--;
        //           });
        //         },
        //         icon: SvgPicture.asset(
        //           'assets/images/back.svg',
        //           height: 30.h,
        //           width: 30.w,
        //           fit: BoxFit.fill,
        //         ),
        //       )
        //     : null,
        title: Text(
          getAppBarTitle(_currentIndex),
          style: myTextStyle(30.sp, FontWeight.bold, greenClr),
        ),
        actions: [
          _currentIndex == 4
              ? IconButton(
                  onPressed: () {
                    Get.to(()=>const AccountSettingsPage());
                  },
                  icon: Icon(
                    Icons.settings,
                    size: 30.sp,
                    color: textClr,
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/images/profile-img.svg',
                      height: 35.h,
                      width: 35.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
        ],
      ),
      body: _pageList.elementAt(_currentIndex),
      // bottomNavigationBar: Card(
      //   color: filledClr,
      //   elevation: 4,
      //   margin: EdgeInsets.only(right: 30.w, left: 30.w, bottom: 30.h),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(24.r),
      //   ),
      //   child: SizedBox(
      //     width: double.infinity,
      //     height: 68.h,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         IconButton(
      //             onPressed: () {
      //               setState(() {
      //                 _selectedIndex = 0;
      //               });
      //             },
      //             icon: Icon(
      //               Icons.home_filled,
      //               color: yellowClr,
      //               size: 30.sp,
      //             )),
      //         IconButton(
      //             onPressed: () {
      //               setState(() {
      //                 _selectedIndex = 1;
      //               });
      //             },
      //             icon: Icon(
      //               Icons.leaderboard_rounded,
      //               color: yellowClr,
      //               size: 30.sp,
      //             )),
      //         IconButton(
      //             onPressed: () {
      //               setState(() {
      //                 _selectedIndex = 2;
      //               });
      //             },
      //             icon: Icon(
      //               Icons.next_plan_rounded,
      //               color: yellowClr,
      //               size: 30.sp,
      //             )),
      //         IconButton(
      //             onPressed: () {
      //               setState(() {
      //                 _selectedIndex = 3;
      //               });
      //             },
      //             icon: Icon(
      //               Icons.gamepad_rounded,
      //               color: yellowClr,
      //               size: 30.sp,
      //             )),
      //         IconButton(
      //             onPressed: () {
      //               setState(() {
      //                 _selectedIndex = 4;
      //               });
      //             },
      //             icon: Icon(
      //               Icons.person_2,
      //               color: yellowClr,
      //               size: 30.sp,
      //             )),
      //       ],
      //     ),
      //   ),
      // ),
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(
            icon: Icons.home_filled,
          ),
          TabItem(
            icon: Icons.leaderboard_rounded,
          ),
          TabItem(
            icon: Icons.next_plan_rounded,
          ),
          TabItem(
            icon: Icons.gamepad_rounded,
          ),
          TabItem(
            icon: Icons.person,
          ),
        ],
        initialActiveIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        activeColor: yellowClr,
        color: yellowClr,
        style: TabStyle.react,
        backgroundColor: filledClr,
        height: 68.h,
        shadowColor: yellowClr.withOpacity(0.5),
      ),
    );
  }

  String getAppBarTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Leader Board';
      case 2:
        return 'Target';
      case 3:
        return 'Game';
      case 4:
        return 'Profile';
      default:
        return 'Unknown Page';
    }
  }
}
