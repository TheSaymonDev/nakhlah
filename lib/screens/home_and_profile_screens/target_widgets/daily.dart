import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:task1/models/daily_model.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';
import 'package:task1/reusable/widgets/app_linear_progress.dart';

class Daily extends StatelessWidget {
  Daily({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(30.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.alarm,
              size: 25.sp,
              color: yellowClr,
            ),
            Gap(5.w),
            Text(
              '3 HOURS',
              style: myTextStyle(20.sp, FontWeight.normal, textClr),
            )
          ],
        ),
        Gap(20.h),
        Container(
          height: 400.h,
          decoration: decorationStyle(),
          child: ListView.separated(
            itemBuilder: (context, index) {
              double itemHeight = 400.h / DailyModel.dailyList.length;
              return Container(
                width: double.infinity,
                height: itemHeight.h,
                decoration: decorationStyle(),
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          DailyModel.dailyList[index].iconUrl,
                          height: 15.h,
                          width: 25.w,
                          fit: BoxFit.fill,
                        ),
                        Gap(10.w),
                        Text(
                          DailyModel.dailyList[index].title,
                          style: myTextStyle(23.sp, FontWeight.normal, textClr),
                        )
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 14.h,
                          width: 280.w,
                          child: AppLinearProgress(
                              progressValue:
                                  DailyModel.dailyList[index].progress),
                        ),
                        Positioned(
                          child: Text(
                            '${DailyModel.dailyList[index].progress*10}${DailyModel.dailyList[index].progressText}',
                            style:
                                myTextStyle(16.sp, FontWeight.normal, textClr),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(
              color: backgroundClr,
            ),
            itemCount: DailyModel.dailyList.length,
          ),
        ),

      ],
    );
  }
}
