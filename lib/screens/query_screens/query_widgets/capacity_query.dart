import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task1/reusable/widgets/app_query_container.dart';
import 'package:task1/reusable/widgets/app_query_text.dart';

class CapacityQuery extends StatelessWidget {
  const CapacityQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppQueryText(name: 'How is your current capacity?'),
        Gap(55.h),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppQueryContainer(imgUrl: 'assets/images/man-3.svg'),
                Gap(18.h),
                const AppQueryText(name: 'No knowledge'),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppQueryContainer(imgUrl: 'assets/images/man-2.svg'),
                Gap(18.h),
                const AppQueryText(name: 'Know the basic'),
              ],
            ),
          ],
        ),
        Gap(36.h),
        Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AppQueryContainer(imgUrl: 'assets/images/man-1.svg'),
              Gap(18.h),
              const AppQueryText(name: 'Intermediate'),
            ],
          ),
        ),
      ],
    );
  }
}
