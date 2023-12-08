import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';
import 'package:task1/reusable/widgets/app_bar_back.dart';
import 'package:task1/reusable/widgets/app_text_form_field.dart';
import 'package:task1/reusable/widgets/app_yellow_button.dart';
import 'package:task1/screens/authentication_screens/forgot_password_page.dart';

class MobileNumberPage extends StatefulWidget {
  const MobileNumberPage({super.key});

  @override
  State<MobileNumberPage> createState() => _MobileNumberPageState();
}

class _MobileNumberPageState extends State<MobileNumberPage> {
  final _countryController = TextEditingController();
  final _mobileNumberController = TextEditingController();

  final List<String> _selectedCountryList = [
    'Bangladesh',
    'India',
    'Pakistan',
    'Japan',
    'Thailand'
  ];
  String _selectedCountry = 'Bangladesh';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      appBar: appBarBack(onPressed: () {
        Navigator.pop(context);
      }),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'NAKHLAH',
                  style: myTextStyle(50.sp, FontWeight.bold, greenClr),
                ),
                Gap(15.h),
                Text(
                  'Mobile Number',
                  style: myTextStyle(25.sp, FontWeight.bold, textClr),
                ),
                Gap(46.h),
                AppTextFormField(
                  hintText: _selectedCountry,
                  controller: _countryController,
                  readOnly: true,
                  suffixIcon: customDropDownButton(
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedCountry = newValue!;
                      });
                    },
                    items: _selectedCountryList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                Gap(25.h),
                AppTextFormField(
                  hintText: '018********',
                  controller: _mobileNumberController,
                  keyBoardType: TextInputType.phone,
                ),
                Gap(350.h),
                AppYellowButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordPage(),
                        ));
                  },
                  buttonName: 'Continue',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
