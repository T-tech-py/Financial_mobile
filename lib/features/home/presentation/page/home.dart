import 'package:finance_mobile/core/constans/colors.dart';
import 'package:finance_mobile/core/constans/sizeboxs.dart';
import 'package:finance_mobile/core/constans/styles.dart';
import 'package:finance_mobile/core/router/navigator.dart';
import 'package:finance_mobile/core/util/radius.dart';
import 'package:finance_mobile/features/detail/presentation/page/details.dart';
import 'package:finance_mobile/features/home/presentation/widget/custom_add_button.dart';
import 'package:finance_mobile/features/home/presentation/widget/image_place_holder.dart';
import 'package:finance_mobile/features/home/presentation/widget/notification_widget.dart';
import 'package:finance_mobile/features/home/presentation/widget/option_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ySize(38.5),
            Row(
              children: [
                Text.rich(TextSpan(
                    text: "Hello, ",
                    children: [
                      TextSpan(text: 'Czar!', style: textStyle22White700)
                    ],
                    style: textStyle22White400)),
                const Spacer(),
                NotificationWidget(
                  onTap: () {},
                ),
                const ImagePlaceHolderWidget()
              ],
            ),
            ySize(35),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 17.h),
              decoration: BoxDecoration(
                borderRadius: customRadius(20),
                color: lightBlack,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Your Balance",
                        style: textStyle14White400.copyWith(color: grey),
                      ),
                      const Spacer(),
                      CustomAddButton(
                        onTap: () {},
                      )
                    ],
                  ),
                  ySize(14),
                  Text(
                    "\$10.713.95",
                    style: textStyle32White700,
                  )
                ],
              ),
            ),
            ySize(43),
            const OptionTextWidget(
              optionTitle: "Your Portofolio",
              actionText: "See All",
            ),
            ySize(27),
            SizedBox(
              height: 355.h,
              child: ListView(
                clipBehavior: Clip.none,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                      onTap: () {
                        Navigate.justPush(context, const CardDetailsScreen());
                      },
                      child: Image.asset("assets/image/png/card1.png")),
                  xSize(60),
                  Image.asset("assets/image/png/card2.png"),
                ],
              ),
            ),
            ySize(37),
            const OptionTextWidget(
                optionTitle: "Activity", actionText: "See All")
          ],
        ),
      ),
    );
  }
}
