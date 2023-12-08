import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task1/reusable/widgets/app_query_container.dart';
import 'package:task1/reusable/widgets/app_query_text.dart';

class LearningObjectQuery extends StatelessWidget {
  const LearningObjectQuery({super.key});

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
                const AppQueryContainer(imgUrl: 'assets/images/travel.svg'),
                Gap(18.h),
                const AppQueryText(name: 'Travel'),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppQueryContainer(imgUrl: 'assets/images/worker.svg'),
                Gap(18.h),
                const AppQueryText(name: 'Worker'),
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
                const AppQueryContainer(imgUrl: 'assets/images/businessman.svg'),
                Gap(18.h),
                const AppQueryText(name: 'Business'),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppQueryContainer(imgUrl: 'assets/images/culture.svg'),
                Gap(18.h),
                const AppQueryText(name: 'Culture'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
