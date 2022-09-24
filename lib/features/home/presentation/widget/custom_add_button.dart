import 'package:finance_mobile/core/constans/colors.dart';
import 'package:finance_mobile/core/util/radius.dart';
import 'package:flutter/material.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: primaryOrange),
            borderRadius: customRadius(6)),
        child: Icon(
          Icons.add,
          color: primaryOrange,
          size: 20,
        ),
      ),
    );
  }
}
