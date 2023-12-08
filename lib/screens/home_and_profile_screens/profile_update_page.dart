import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';
import 'package:task1/reusable/widgets/app_text_form_field.dart';
import 'package:task1/reusable/widgets/app_yellow_button.dart';

class ProfileUpdatePage extends StatefulWidget {
  const ProfileUpdatePage({super.key});

  @override
  State<ProfileUpdatePage> createState() => _ProfileUpdatePageState();
}

class _ProfileUpdatePageState extends State<ProfileUpdatePage> {
  final _nameController = TextEditingController();

  final _userNameController = TextEditingController();

  final _emailController = TextEditingController();

  final _languageController = TextEditingController();

  final _countryController = TextEditingController();

  final _phoneController = TextEditingController();

  final _passwordController = TextEditingController();

  final List<String> _selectedCountryList = [
    'Bangladesh',
    'India',
    'Pakistan',
    'Japan',
    'Thailand'
  ];

  String _selectedCountry = 'Bangladesh (+88)';

  String _selectedLanguage = 'Bangla';

  final List<String> _selectedLanguageList = [
    'Bangla',
    'English',
    'Arabic',
    'Hindi',
    'Japanese'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      appBar: appBarBack(onPressed: () {}),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 56.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 115.h,
                      width: 115.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/profile-img.png'),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    Positioned(
                      right: 7,
                      child: Container(
                          height: 28.h,
                          width: 28.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: greenClr),
                          child: Icon(
                            Icons.edit,
                            color: backgroundClr,
                            size: 18.sp,
                          )),
                    ),
                  ],
                ),
              ),
              Text(
                'Name',
                style: myTextStyle(25.sp, FontWeight.bold, textClr),
              ),
              Gap(6.h),
              AppTextFormField(
                  hintText: 'Sheikh Aabid', controller: _nameController),
              Gap(22.h),
              Text(
                'Username',
                style: myTextStyle(25.sp, FontWeight.bold, textClr),
              ),
              Gap(6.h),
              AppTextFormField(
                  hintText: 'sheikhaabid1', controller: _userNameController),
              Gap(22.h),
              Text(
                'Email',
                style: myTextStyle(25.sp, FontWeight.bold, textClr),
              ),
              Gap(6.h),
              AppTextFormField(
                  hintText: 'sheikhaabid1@gmail.com',
                  controller: _emailController),
              Gap(22.h),
              Text(
                'Language',
                style: myTextStyle(25.sp, FontWeight.bold, textClr),
              ),
              Gap(6.h),
              AppTextFormField(
                readOnly: true,
                hintText: _selectedLanguage,
                controller: _languageController,
                suffixIcon: customDropDownButton(
                  onChanged: (String? value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                  items: _selectedLanguageList
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Gap(22.h),
              Text(
                'Country',
                style: myTextStyle(25.sp, FontWeight.bold, textClr),
              ),
              Gap(6.h),
              AppTextFormField(
                readOnly: true,
                hintText: _selectedCountry,
                controller: _countryController,
                suffixIcon: customDropDownButton(
                  onChanged: (String? value) {
                    setState(() {
                      _selectedCountry = value!;
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
              Gap(22.h),
              Text(
                'Phone',
                style: myTextStyle(25.sp, FontWeight.bold, textClr),
              ),
              Gap(6.h),
              AppTextFormField(
                  hintText: '+88 01700000000', controller: _phoneController),
              Gap(22.h),
              Text(
                'Password',
                style: myTextStyle(25.sp, FontWeight.bold, textClr),
              ),
              Gap(6.h),
              AppTextFormField(
                  hintText: '***********', controller: _passwordController),
              Gap(58.h),
              Center(
                  child: AppYellowButton(onPressed: () {}, buttonName: 'Save')),
              Gap(40.h),
            ],
          ),
        ),
      ),
    );
  }
}
