import 'package:finance_mobile/core/constans/colors.dart';
import 'package:finance_mobile/core/constans/sizeboxs.dart';
import 'package:finance_mobile/core/constans/styles.dart';
import 'package:finance_mobile/core/util/radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateDropdownWidget extends StatelessWidget {
  const DateDropdownWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 101.w,
      padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: customRadius(10),
        color: const Color(0xff333333),
      ),
      child: Row(
        children: [
          Text('Weekly', style: textStyle14White400),
          xSize(8),
          Icon(Icons.arrow_drop_down, color: primaryOrange),
        ],
      ),
    );
  }
}
