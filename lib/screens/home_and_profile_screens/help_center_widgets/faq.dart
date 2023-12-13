import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task1/models/faq_questions_model.dart';
import 'package:task1/reusable/colors.dart';
import 'package:task1/reusable/styles.dart';

class Faq extends StatefulWidget {
  Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  final _searchController = TextEditingController();

  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(24.h),
        Row(
          children: [
            Expanded(child: _faqButton(name: 'General')),
            Gap(12.w),
            Expanded(child: _faqButton(name: 'Account')),
            Gap(12.w),
            Expanded(child: _faqButton(name: 'Service')),
            Gap(12.w),
            Expanded(child: _faqButton(name: 'Language')),
          ],
        ),
        Gap(30.h),
        SizedBox(
          width: double.infinity,
          child: TextFormField(
            controller: _searchController,
            cursorColor: textClr,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: Icon(
                  Icons.search,
                  color: greenClr,
                ),
              ),
              fillColor: filledClr,
              filled: true,
              focusColor: textClr,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: textClr, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: textClr, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        Gap(30.h),
        Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: Card(
                    color: filledClr,
                    child: ExpansionTile(
                      title: Text(
                        FAQItem.faqList[index].question,
                        style: myTextStyle(25.sp, FontWeight.normal, textClr),
                      ),
                      trailing: Icon(
                        _customTileExpanded
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right, color: greenClr,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(FAQItem.faqList[index].answer, style: myTextStyle(25.sp, FontWeight.normal, textClr),),
                        ),
                      ],
                      onExpansionChanged: (bool expanded) {
                        setState(() {
                          _customTileExpanded = expanded;
                        });
                      },
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => Gap(0.h),
                itemCount: FAQItem.faqList.length)),

      ],
    );
  }

  Container _faqButton({required String name}) {
    return Container(
      height: 36.h,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r), color: filledClr),
      child: Text(
        name,
        style: myTextStyle(20.sp, FontWeight.normal, textClr),
      ),
    );
  }
}
