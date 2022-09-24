import 'package:finance_mobile/core/util/radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressVIew extends StatelessWidget {
  const ProgressVIew({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.h,
      width: 93.w,
      decoration: BoxDecoration(
        borderRadius: customRadius(20.r),
        color: color,
      ),
    );
  }
}
