import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:nakhlah_education_app/models/query_model.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_appbar/appbar_textview_with_back.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_yellow_button.dart';
import 'package:nakhlah_education_app/screens/authentication_screens/sign_up_page.dart';

class QueryPage extends StatefulWidget {
  const QueryPage({super.key});

  @override
  State<QueryPage> createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {

  int _currentPageIndex = 0;
  final _pageController = PageController();
  int? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      appBar: AppbarTextviewWithBack(onPressedBack: () {
        Get.back();
      }),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (int pageIndex) {
              setState(() {
                _currentPageIndex = pageIndex;
              });
            },
            controller: _pageController,
            itemBuilder: (context, index) {
              final queryTopic = QueryTopic.queryTopics[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(40.h),
                  Text(
                    queryTopic.title,
                    style: myTextStyle(25.sp, FontWeight.bold, textClr),
                  ),
                  Gap(55.h),
                  Expanded(
                    child: MasonryGridView.count(
                      mainAxisSpacing: 36.h,
                      crossAxisSpacing: 36.w,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      itemBuilder: (context, index) {
                        final option = queryTopic.options[index];
                        return Column(
                          children: [
                            Text(
                              option.title,
                              style: myTextStyle(
                                  25.sp, FontWeight.normal, textClr),
                            ),
                            Gap(16.h),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedOption = index;
                                  queryTopic.selectedOption = option.title;
                                });
                              },
                              child: Container(
                                alignment: Alignment.topRight,
                                height: 152.h,
                                width: 152.w,
                                decoration: BoxDecoration(
                                  color:_selectedOption == index
                                      ? greenClr.withOpacity(0.5)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                      color: _selectedOption == index
                                          ? greenClr
                                          : containerBorderClr,
                                      width: 4.w),
                                  image: DecorationImage(
                                      image: AssetImage(option.imagePath),
                                      fit: BoxFit.cover),
                                ),
                                child: _selectedOption==index?Icon(Icons.verified, size: 20.sp, color: greenClr,):null,
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: queryTopic.options.length,
                    ),
                  ),
                  Center(
                      child: CustomYellowButton(
                          onPressed: () {
                            if (_currentPageIndex <
                                QueryTopic.queryTopics.length - 1) {
                              _selectedOption=null;
                              _pageController.nextPage(
                                duration: const Duration(seconds: 1),
                                curve: Curves.ease,
                              );
                            } else {
                              Get.to(() =>
                                  const SignUpPage()); // Assuming you want to go back to the previous screen
                            }
                          },
                          buttonName: 'Continue')),
                  Gap(40.h),
                ],
              );
            },
            itemCount: QueryTopic.queryTopics.length),
      ),
    );
  }
}
