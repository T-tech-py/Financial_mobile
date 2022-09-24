import 'package:finance_mobile/core/constans/colors.dart';
import 'package:finance_mobile/core/constans/styles.dart';
import 'package:finance_mobile/core/util/radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slider_button/slider_button.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    Key? key,
    required this.action,
  }) : super(key: key);
  final VoidCallback action;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SliderButton(
            action: action,
            vibrationFlag: true,
            disable: false,
            buttonSize: 44,
            label: Text(" >   >   >   >   >",
                style: textStyle34White400.copyWith(color: grey)),
            width: 230.w,
            radius: 100,
            buttonColor: primaryOrange,
            backgroundColor: progressBarColor,
            highlightedColor: white,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 13.h),
              decoration: BoxDecoration(
                borderRadius: customRadius(24),
                gradient: gradientColor,
              ),
              child: Text(
                "Get Started",
                style: textStyle14White600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
