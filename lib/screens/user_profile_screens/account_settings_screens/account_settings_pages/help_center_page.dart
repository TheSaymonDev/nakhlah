import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';
import 'package:task1/screens/user_profile_screens/account_settings_screens/account_settings_pages/help_center_pages/contact_us_help.dart';
import 'package:task1/screens/user_profile_screens/account_settings_screens/account_settings_pages/help_center_pages/faq_help.dart';


class HelpCenterPage extends StatefulWidget {
  const HelpCenterPage({super.key});

  @override
  State<HelpCenterPage> createState() => _HelpCenterPageState();
}

class _HelpCenterPageState extends State<HelpCenterPage> with SingleTickerProviderStateMixin{

  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  final List<Widget> _tabItemList=[ FaqHelp(),  ContactUsHelp()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      appBar: appBarBack(onPressed: (){Navigator.pop(context);}),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: Column(
          children: [
            Center(
              child: Text(
                'Help center',
                style: myTextStyle(25.sp, FontWeight.normal, textClr),
              ),
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: greenClr,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 8.h,
              labelStyle: myTextStyle(25.sp, FontWeight.bold, textClr),
              unselectedLabelStyle: myTextStyle(25.sp, FontWeight.bold, filledClr),
              tabs: const [
                Tab(text: 'FAQ',),
                Tab(text: 'CONTACT US'),
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
      ),
    );
  }
}
