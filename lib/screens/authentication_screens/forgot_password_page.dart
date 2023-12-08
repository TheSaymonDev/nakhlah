import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';
import 'package:task1/reusable/widgets/app_text_form_field.dart';
import 'package:task1/reusable/widgets/app_yellow_button.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key});

  final _emailController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          children: [
            Text(
              'NAKHLAH',
              style: myTextStyle(30, FontWeight.bold, greenClr),
            ),
            Text(
              'Login',
              style: myTextStyle(20, FontWeight.bold, textClr),
            ),
            Gap(50),
            AppTextFormField(hintText: 'Email', controller: _emailController),
            Gap(20),
            AppYellowButton(onPressed: (){}, buttonName: 'Send',),
            Spacer(),
            AppYellowButton(onPressed: (){}, buttonName: 'Continue',),
          ],
        ),
      ),),
    );
  }
}
