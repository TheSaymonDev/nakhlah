import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/widgets/app_yellow_button.dart';
import 'package:task1/screens/authentication_screens/sign_up_page.dart';
import 'package:task1/screens/home_page.dart';
import 'package:task1/screens/query_screens/query_widgets/capacity_query.dart';
import 'package:task1/screens/query_screens/query_widgets/language_query.dart';
import 'package:task1/screens/query_screens/query_widgets/learning_goal_query.dart';
import 'package:task1/screens/query_screens/query_widgets/learning_object_query.dart';

class QueryPage extends StatefulWidget {
  const QueryPage({super.key});

  @override
  State<QueryPage> createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {
  final _pageController = PageController();
  int _currentPage = 0;
  final List<Widget> _queryList = [
    const LanguageQuery(),
    const CapacityQuery(),
    const LearningObjectQuery(),
    const LearningGoalQuery(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(
              'assets/images/back.svg',
              fit: BoxFit.cover,
              height: 35.h,
              width: 35.w,
            )),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 40.w, right: 40.w, bottom: 40.h),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: _queryList,
              ),
            ),
            AppYellowButton(
              onPressed: () {
                if (_currentPage < 3) {
                  _pageController.nextPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.ease,
                  );
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      )); // Assuming you want to go back to the previous screen
                }
              },
              buttonName: 'Continue',
            )
          ],
        ),
      ),
    );
  }
}
