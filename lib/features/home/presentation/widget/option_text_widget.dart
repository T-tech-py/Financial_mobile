import 'package:finance_mobile/core/constans/colors.dart';
import 'package:finance_mobile/core/constans/styles.dart';
import 'package:flutter/material.dart';

class OptionTextWidget extends StatelessWidget {
  const OptionTextWidget({
    Key? key,
    required this.optionTitle,
    required this.actionText,
  }) : super(key: key);
  final String optionTitle;
  final String actionText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          optionTitle,
          style: textStyle18White600,
        ),
        Text(
          actionText,
          style: textStyle16White600.copyWith(color: primaryOrange),
        ),
      ],
    );
  }
}
