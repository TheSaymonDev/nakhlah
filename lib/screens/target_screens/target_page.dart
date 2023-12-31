
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';
import 'package:nakhlah_education_app/screens/target_screens/targets/daily_target.dart';
import 'package:nakhlah_education_app/screens/target_screens/targets/monthly_target.dart';


class TargetPage extends StatefulWidget {
  const TargetPage({super.key});

  @override
  State<TargetPage> createState() => _TargetPageState();
}

class _TargetPageState extends State<TargetPage> with SingleTickerProviderStateMixin{

  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  final List<Widget> _tabItemList=[ Daily(),  const Monthly()];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
           // AppCustomAppBar(title: 'Nakhlah',),
          Gap(60.h),
          TabBar(
            controller: _tabController,
            indicatorColor: greenClr,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 8.h,
            labelStyle: myTextStyle(25.sp, FontWeight.bold, textClr),
            unselectedLabelStyle: myTextStyle(25.sp, FontWeight.bold, textClr),
            tabs: const [
              Tab(text: 'Daily',),
              Tab(text: 'Monthly'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: _tabItemList,
            ),
          ),
        ],
      ),
    );
  }
}
