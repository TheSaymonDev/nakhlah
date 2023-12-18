import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:task1/models/leader_board_model.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';


class UserProfilePage extends StatelessWidget {
  UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                Gap(15.h),
                InkWell(
                  onTap: () {},
                  child: Center(
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/images/profile-img.svg',
                          height: 115.h,
                          width: 115.w,
                          fit: BoxFit.fitHeight,
                        ),
                        Positioned(
                          right: 9,
                          bottom: 9,
                          child: Container(
                              alignment: Alignment.center,
                              height: 22.h,
                              width: 22.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 4.w, color: Colors.grey),
                              ),
                              child: const CircleAvatar(
                                backgroundColor: Colors.red,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(20.h),
                Text(
                  'Sheikh Aabid',
                  style: myTextStyle(35.sp, FontWeight.bold, textClr),
                ),
                Gap(10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Free Plan',
                      style: myTextStyle(25.sp, FontWeight.bold, textClr),
                    ),
                    Gap(5.w),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                      color: filledClr,
                      child: Text(
                        'Change Plan',
                        style: myTextStyle(15.sp, FontWeight.normal, textClr),
                      ),
                    )
                  ],
                ),
                Divider(color: textClr, thickness: 2.h),
                Gap(15.h),
                Text(
                  'Statistics',
                  style: myTextStyle(20.sp, FontWeight.bold, textClr),
                ),
                Gap(12.h),
                Row(
                  children: [
                    Expanded(
                        child: statistics(title: '15', subTitle: 'Day Streak')),
                    Gap(16.w),
                    Expanded(
                        child:
                            statistics(title: '25', subTitle: 'Total Dates')),
                  ],
                ),
                Gap(16.h),
                Row(
                  children: [
                    Expanded(
                        child: statistics(
                            title: 'None', subTitle: 'Current league')),
                    Gap(16.w),
                    Expanded(
                        child: statistics(
                            title: '10', subTitle: 'Top 3 finishes')),
                  ],
                ),
                Gap(40.h),
                Container(
                  height: 240.h,
                  width: double.infinity,
                  decoration: decorationStyle(),
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index){
                        double itemHeight = 240.h / LeaderBoard.leaderBoardList.length;
                        return Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          height: itemHeight.h,
                          child: Row(
                            children: [
                              Image.asset(
                                LeaderBoard.leaderBoardList[index].iconUrl,
                                height: 35.h,
                                width: 30.w,
                                fit: BoxFit.fill,
                              ),
                              Gap(12.w),
                              SvgPicture.asset(
                                LeaderBoard.leaderBoardList[index].imgUrl,
                                height: 40.h,
                                width: 40.w,
                                fit: BoxFit.fill,
                              ),
                              Gap(10.w),
                              Text(
                                LeaderBoard.leaderBoardList[index].name,
                                style: myTextStyle(
                                    25.sp, FontWeight.normal, textClr),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.stars_rounded,
                                color: greenClr,
                                size: 20.sp,
                              ),
                              Gap(5.w),
                              Text(
                                LeaderBoard.leaderBoardList[index].score,
                                style:
                                myTextStyle(20.sp, FontWeight.bold, textClr),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(
                        color: backgroundClr,
                      ),
                      itemCount: LeaderBoard.leaderBoardList.length),
                ),
                Gap(40.h),
              ],
            ),
          ),
        ))
      ],
    );
  }

  Container statistics({required String title, required String subTitle}) {
    return Container(
      height: 93.h,
      width: double.infinity,
      decoration: decorationStyle(),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.w, top: 16.h),
            child: Align(
                alignment: Alignment.topCenter,
                child: Icon(
                  Icons.circle_notifications,
                  color: greenClr,
                  size: 22.sp,
                )),
          ),
          Gap(8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: myTextStyle(25.sp, FontWeight.bold, textClr),
              ),
              Gap(10.h),
              Text(
                subTitle,
                style: myTextStyle(20.sp, FontWeight.bold, textClr),
              )
            ],
          ),
        ],
      ),
    );
  }
}
