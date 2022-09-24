import 'package:finance_mobile/core/util/radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImgCardWidget extends StatelessWidget {
  const ImgCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61.h,
      width: 61.h,
      decoration: BoxDecoration(
          borderRadius: customRadius(14),
          gradient: const LinearGradient(
            colors: [
              Color(0xffFF6E47),
              Color(0xffFF9055),
              Color(0xffFF9255),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
      child: const Icon(Icons.image_outlined),
    );
  }
}
