import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:nakhlah_education_app/reusable/colors.dart';
import 'package:nakhlah_education_app/reusable/styles.dart';
import 'package:nakhlah_education_app/reusable/widgets/custom_yellow_button.dart';
import 'package:nakhlah_education_app/screens/authentication_screens/sign_in_page.dart';
import 'package:nakhlah_education_app/screens/authentication_screens/sign_up_page.dart';
import 'package:nakhlah_education_app/screens/query_screens/query_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      body: SafeArea(
        child: Container(
          height: double.infinity.h,
          width: double.infinity.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 244.h,
                        width: 244.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/app-logo.png'), fit: BoxFit.cover)
                        ),
                      ),
                      Gap(130.h),
                      Text(
                        'Start Your Journey',
                        style: myTextStyle(30.sp, FontWeight.bold, textClr),
                      ),
                      Gap(18.h),
                      Text(
                        'Lorem ipsum simply dummy text of the printing and typesetting industry',
                        style: myTextStyle(25.sp, FontWeight.normal, textClr),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  initialPage: 0,
                  height: 569.h,
                  autoPlay: true,
                  viewportFraction: 1,
                ),
              ),
              Gap(25.h),
              SmoothPageIndicator(
                controller: PageController(initialPage: _currentPage),
                count: 3,
                effect: ExpandingDotsEffect(
                  dotHeight: 5.0.h,
                  dotWidth: 10.0,
                  activeDotColor: yellowClr,
                  dotColor: Colors.grey,
                ),
                onDotClicked: (index) => setState(() => _currentPage = index),
              ),
              const Spacer(),
              CustomYellowButton(
                onPressed: () {
                 Get.to(()=>const QueryPage());
                },
                buttonName: 'Get Start',
              ),
              Gap(16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an accounts?",
                    style: myTextStyle(20.sp, FontWeight.normal, textClr),
                  ),
                  Gap(8.w),
                  GestureDetector(
                    onTap: (){
                      Get.to(()=>const SignUpPage());
                    },
                    child: Text(
                      'Create Account',
                      style: myTextStyle(25.sp, FontWeight.bold, greenClr),
                    ),
                  ),
                ],
              ),
              Gap(6.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have account?',
                    style: myTextStyle(20.sp, FontWeight.normal, textClr),
                  ),
                  Gap(8.w),
                  GestureDetector(
                    onTap: (){
                      Get.to(()=>const SignInPage());
                    },
                    child: Text(
                      'Login',
                      style: myTextStyle(25.sp, FontWeight.bold, greenClr),
                    ),
                  ),
                ],
              ),
              Gap(25.h),
            ],
          ),
        ),
      ),
    );
  }
}
