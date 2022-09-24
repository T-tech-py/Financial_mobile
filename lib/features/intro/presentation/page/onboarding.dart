import 'package:finance_mobile/core/constans/colors.dart';
import 'package:finance_mobile/core/constans/sizeboxs.dart';
import 'package:finance_mobile/core/constans/styles.dart';
import 'package:finance_mobile/core/router/navigator.dart';
import 'package:finance_mobile/features/home/presentation/page/home.dart';
import 'package:finance_mobile/features/intro/presentation/widget/Custom_slider.dart';
import 'package:finance_mobile/features/intro/presentation/widget/progress_bar_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                black,
                black.withOpacity(0),
              ])),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset(
                  "assets/image/png/intro.png",
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 500,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                  child: Row(
                    children: [
                      Expanded(child: ProgressVIew(color: secondaryOrange)),
                      xSize(24),
                      Expanded(child: ProgressVIew(color: progressBarColor)),
                      xSize(24),
                      Expanded(child: ProgressVIew(color: progressBarColor)),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ySize(450),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text.rich(
                        TextSpan(
                            text: "Make Your \nFinances In",
                            children: [
                              TextSpan(
                                text: " One \nPlace!",
                                style: textStyle34White700,
                              )
                            ],
                            style: textStyle34White400),
                      ),
                    ),
                    ySize(12),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text(
                        "Your money is safe and growing with us.",
                        style: textStyle16White400.copyWith(color: grey),
                      ),
                    ),
                    ySize(32),
                    CustomSlider(
                      action: () {
                        Navigate.push(context, const Home());
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
