
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';
import 'package:task1/reusable/widgets/app_custom_app_bar.dart';
import 'package:task1/screens/home_and_profile_screens/target_widgets/daily.dart';
import 'package:task1/screens/home_and_profile_screens/target_widgets/monthly.dart';

class TargetPage extends StatefulWidget {
  TargetPage({super.key});

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

  final List<Widget> _tabItemList=[ Daily(),  Monthly()];

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
