import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_appbar/appbar_textview_with_back.dart';
import 'package:nakhlah_education_app/screens/settings_screen/various_settings/help_center_pages/contact_us_help.dart';
import 'package:nakhlah_education_app/screens/settings_screen/various_settings/help_center_pages/faq_help.dart';


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

  final List<Widget> _tabItemList=[ FaqHelp(),  const ContactUsHelp()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      appBar: AppbarTextviewWithBack(onPressedBack: (){Get.back();},title: 'Help Center',),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: Column(
          children: [
            Gap(40.h),
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
