import 'package:flutter/material.dart';
import 'package:my_task/constant.dart';
import 'package:my_task/core/utils/assets.dart';

class MarkIcon extends StatelessWidget {
  const MarkIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: MyColors.blueColor,
        borderRadius: kBorderRadius,
      ),
      child: IconButton(
        padding: kPadding,
        icon: Image.asset(
          AssetsData.vector,
          height: 20,
          width: 20,
        ),
        onPressed: () {},
      ),
    );
  }
}
