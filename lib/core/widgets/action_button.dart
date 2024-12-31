import 'package:flutter/material.dart';
import 'package:my_task/constant.dart';
import 'package:my_task/core/utils/styles.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ActionButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.orangeColor,
          shape: RoundedRectangleBorder(
            borderRadius: kBorderRadius,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),

        ),
        child: Text(
          text,
          style: Styles.textStyle12.copyWith(
            color: MyColors.whiteColor
          ),
        ),
      ),
    );
  }
}
