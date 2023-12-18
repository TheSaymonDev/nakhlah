import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task1/reusable/widgets/app_query_container.dart';
import 'package:task1/reusable/widgets/app_query_text.dart';

class LearningGoalQuery extends StatelessWidget {
  const LearningGoalQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppQueryText(name: 'What is your daily learning goal?'),
        Gap(55.h),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppQueryContainer(imgUrl: 'assets/images/10-min.svg'),
                Gap(18.h),
                const AppQueryText(name: '10 Minutes'),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppQueryContainer(imgUrl: 'assets/images/20-min.svg'),
                Gap(18.h),
                const AppQueryText(name: '20 Minutes'),
              ],
            ),
          ],
        ),
        Gap(36.h),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppQueryContainer(imgUrl: 'assets/images/30-min.svg'),
                Gap(18.h),
                const AppQueryText(name: '30 Minutes'),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppQueryContainer(imgUrl: 'assets/images/45-min.svg'),
                Gap(18.h),
                const AppQueryText(name: '45 Minutes'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
