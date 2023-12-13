
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';
import 'package:task1/reusable/widgets/app_custom_app_bar.dart';
import 'package:task1/screens/leader_board_screen/bronze.dart';
import 'package:task1/screens/leader_board_screen/gold.dart';
import 'package:task1/screens/leader_board_screen/platinum.dart';
import 'package:task1/screens/leader_board_screen/silver.dart';
import 'package:task1/screens/leader_board_screen/titanium.dart';

class LeaderBoardPage extends StatefulWidget {
  const LeaderBoardPage({super.key});

  @override
  State<LeaderBoardPage> createState() => _LeaderBoardPageState();
}

class _LeaderBoardPageState extends State<LeaderBoardPage> with SingleTickerProviderStateMixin{

  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this, initialIndex: 0);
    super.initState();
  }

  final List<Widget> _tabItemList = [const Bronze(), const Silver(), const Titanium(), const Gold(), const Platinum()];

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       // AppCustomAppBar(title: 'NAKHLAH',),
       TabBar(
         tabAlignment: TabAlignment.fill,
         labelPadding: EdgeInsets.symmetric(horizontal: 0.w),
         controller: _tabController,
         indicatorColor: textClr,
         indicatorSize: TabBarIndicatorSize.label,
         indicatorWeight: 4.h,
         labelStyle: myTextStyle(25.sp, FontWeight.bold, textClr),
         unselectedLabelStyle: myTextStyle(25.sp, FontWeight.normal, Colors.grey),
         tabs: const [
           Tab(text: 'Bronze',),
           Tab(text: 'Silver'),
           Tab(text: 'Titanium'),
           Tab(text: 'Gold'),
           Tab(text: 'Platinum'),
         ],
       ),
       Expanded(
         child: TabBarView(
           controller: _tabController,
           children: _tabItemList,
         ),
       ),
     ],
    );
  }
}
