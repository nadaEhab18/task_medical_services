import 'package:flutter/material.dart';
import 'package:my_task/constant.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({
    super.key,
    required this.imageUrl,
    required this.screenHeight,
    this.screenWidth,
    this.backgroundOpacity = 0,
    this.colorFilterColor,
    this.colorFilterOpacity = 0,
  });
  final double screenHeight;
  final double? screenWidth, backgroundOpacity, colorFilterOpacity;
  final Color? colorFilterColor;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(
        color: MyColors.blackColor.withOpacity(backgroundOpacity!
        ),
        borderRadius: kBorderRadius,
        image: DecorationImage(
          image: AssetImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
          colorFilter: colorFilterColor != null
              ? ColorFilter.mode(
            colorFilterColor!.withOpacity(colorFilterOpacity!),
            BlendMode.dstATop,
          )
              : null,
        ),
      ),
    );
  }
}

