import 'package:finance_mobile/core/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImagePlaceHolderWidget extends StatelessWidget {
  const ImagePlaceHolderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(shape: BoxShape.circle, color: deepOrange),
      child: Center(
        child: SvgPicture.asset("assets/image/svg/img_placeholder.svg"),
      ),
    );
  }
}
