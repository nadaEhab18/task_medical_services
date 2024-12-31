
import 'package:flutter/material.dart';
import 'package:my_task/constant.dart';

BoxDecoration buildBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: MyColors.greyBorderColor,
      width: 1.5,
    ),
    borderRadius: kBorderRadius,
    color: MyColors.whiteColor,
  );
}
