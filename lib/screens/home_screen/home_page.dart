import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:nakhlah_education_app/models/leader_board_model.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';
import 'package:nakhlah_education_app/reusable/widgets/app_linear_progress.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double _progressValue = 0.5;

  double _learningProgress = 0.6;

  double _listeningProgress = 0.7;

  double _readingProgress = 0.8;

  double _speakingProgress = 0.9;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: backgroundClr,
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     IconButton(
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.menu,
            //           size: 30.sp,
            //           color: textClr,
            //         )),
            //     Text(
            //       'Home',
            //       style: myTextStyle(25.sp, FontWeight.bold, textClr),
            //     ),
            //     Image.asset(
            //       'assets/images/profile-img.png',
            //       height: 45.h,
            //       width: 45.w,
            //     ),
            //   ],
            // ),
            Gap(25.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              width: double.infinity,
              decoration: decorationStyle(),
              child: Row(
                children: [
                  Center(
                      child: Image.asset(
                    'assets/images/saudi-flag.png',
                    height: 55.h,
                    width: 55.w,
                  )),
                  Gap(5.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Arabic Language',
                        style: myTextStyle(30.sp, FontWeight.normal, textClr),
                      ),
                      Text(
                        'Beginner',
                        style: myTextStyle(25.sp, FontWeight.normal, textClr),
                      ),
                      Gap(10.h),
                      Row(
                        children: [
                          SizedBox(
                            width: 165.w,
                            height: 5.h,
                            child: AppLinearProgress(
                                progressValue: _progressValue),
                          ),
                          Gap(10.w),
                          Text(
                            '${_progressValue * 100}%',
                            style:
                                myTextStyle(20.sp, FontWeight.normal, textClr),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.stars_rounded,
                            size: 20.sp,
                            color: greenClr,
                          ),
                          Text(
                            '1000',
                            style: myTextStyle(15.sp, FontWeight.bold, textClr),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Gap(25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lesson Details',
                  style: myTextStyle(25.sp, FontWeight.bold, textClr),
                ),
                Text(
                  'View all',
                  style: myTextStyle(
                      25.sp, FontWeight.normal, textClr.withOpacity(0.8)),
                ),
              ],
            ),
            Gap(10.h),
            Row(
              children: [
                lessonSection(
                    imgUrl: 'assets/images/learning.png',
                    title: 'Learning',
                    progress: '${_learningProgress * 100}%',
                    progressValue: _learningProgress),
                Gap(16.w),
                lessonSection(
                    imgUrl: 'assets/images/speaking.png',
                    title: 'Speaking',
                    progress: '${_speakingProgress * 100}%',
                    progressValue: _speakingProgress),
              ],
            ),
            Gap(16.h),
            Row(
              children: [
                lessonSection(
                    imgUrl: 'assets/images/reading.png',
                    title: 'Reading',
                    progress: '${_readingProgress * 100}%',
                    progressValue: _readingProgress),
                Gap(16.w),
                lessonSection(
                    imgUrl: 'assets/images/listening.png',
                    title: 'Listening',
                    progress: '${_listeningProgress * 100}%',
                    progressValue: _listeningProgress),
              ],
            ),
            Gap(25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Leaderboard',
                  style: myTextStyle(25.sp, FontWeight.bold, textClr),
                ),
                Text(
                  'View all',
                  style: myTextStyle(
                      25.sp, FontWeight.normal, textClr.withOpacity(0.8)),
                ),
              ],
            ),
            Gap(10.h),
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
          ],
        ),
      ),
    );
  }

  Expanded lessonSection(
      {required String imgUrl,
      required String title,
      required String progress,
      required double progressValue}) {
    return Expanded(
      child: Container(
        height: 105.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
        decoration: decorationStyle(),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  imgUrl,
                  height: 22.h,
                  width: 22.w,
                  fit: BoxFit.cover,
                ),
                Gap(8.w),
                Text(
                  title,
                  style: myTextStyle(25.sp, FontWeight.normal, textClr),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Completed',
                  style: myTextStyle(20.sp, FontWeight.normal, textClr),
                ),
                Text(
                  progress,
                  style: myTextStyle(20.sp, FontWeight.normal, textClr),
                ),
              ],
            ),
            Gap(4.h),
            SizedBox(
              height: 4.5.h,
              width: double.infinity,
              child: AppLinearProgress(progressValue: progressValue),
            ),
          ],
        ),
      ),
    );
  }
}
