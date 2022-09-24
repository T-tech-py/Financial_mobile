import 'package:finance_mobile/core/constans/colors.dart';
import 'package:finance_mobile/core/constans/styles.dart';
import 'package:finance_mobile/core/util/radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slider_button/slider_button.dart';

class CustomSlider2 extends StatelessWidget {
  const CustomSlider2({
    Key? key,
    required this.action,
  }) : super(key: key);
  final VoidCallback action;
  @override
  Widget build(BuildContext context) {
    return SliderButton(
      action: action,
      vibrationFlag: true,
      disable: false,
      buttonSize: 34,
      label:
          Text("    >  >  >", style: textStyle22White400.copyWith(color: grey)),
      width: 148.w,
      height: 49.h,
      radius: 23.r,
      buttonColor: primaryOrange,
      backgroundColor: darkBackgroundColor,
      highlightedColor: white,
      child: Container(
        // width: 65.w,
        padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 11.h),
        decoration: BoxDecoration(
          borderRadius: customRadius(24),
          gradient: gradientColor,
        ),
        child: Text(
          "Buy",
          style: textStyle14White600,
        ),
      ),
    );
  }
}
