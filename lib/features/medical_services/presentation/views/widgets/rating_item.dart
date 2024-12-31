import 'package:flutter/material.dart';
import 'package:my_task/constant.dart';
import 'package:my_task/core/utils/styles.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({
    super.key,
    required this.rating,
    required this.opacity,
    this.screenWidth,
  });

  final double? screenWidth;
  final String rating;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
        child:
        Container(
          decoration: BoxDecoration(
            color: MyColors.greyBorderColor.withOpacity(opacity),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          width: screenWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(rating,
                  style: Styles.textStyle12.copyWith(
                      color: MyColors.blackColor, fontWeight: FontWeight.w600)),
              const Icon(Icons.star_rounded,
                  color: MyColors.yellowColor, size: 20),
            ],
          ),
        ),

    );
  }
}
