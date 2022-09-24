import 'package:finance_mobile/core/constans/colors.dart';
import 'package:finance_mobile/core/constans/sizeboxs.dart';
import 'package:finance_mobile/core/constans/styles.dart';
import 'package:finance_mobile/core/util/radius.dart';
import 'package:finance_mobile/features/detail/presentation/widget/back_arrow.dart';
import 'package:finance_mobile/features/detail/presentation/widget/custom_slider2.dart';
import 'package:finance_mobile/features/detail/presentation/widget/date_dropdown.dart';
import 'package:finance_mobile/features/detail/presentation/widget/graph.dart';
import 'package:finance_mobile/features/detail/presentation/widget/img_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ySize(30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackArrow(
                  onTap: () {},
                ),
                SvgPicture.asset("assets/image/svg/option_icon.svg"),
              ],
            ),
          ),
          const ImgCardWidget(),
          ySize(12),
          Text("Apple Inc.", style: textStyle22White700),
          ySize(4),
          Text(
            "(AAPL)",
            style: textStyle14White400.copyWith(color: grey),
          ),
          ySize(31),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff262626), borderRadius: customTopRadius(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ySize(32),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: DateDropdownWidget(),
                  ),
                  const Expanded(child: LineCharts(isShowingMainData: false)),
                  ySize(32),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 24.w),
                    decoration: BoxDecoration(
                        borderRadius: customTopRadius(30),
                        color: Color(0xff303030)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ySize(32),
                        Text(
                          "Available for buying",
                          style: textStyle14White400.copyWith(
                              color: Color(0xff9B9B9B)),
                        ),
                        ySize(8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$8.423",
                              style: textStyle22White400.copyWith(
                                  fontSize: 28.sp, fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            Expanded(child: CustomSlider2(action: () {})),
                          ],
                        ),
                        ySize(46),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
