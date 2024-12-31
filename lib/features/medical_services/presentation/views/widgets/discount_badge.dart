import 'package:flutter/material.dart';
import 'package:my_task/constant.dart';
import 'package:my_task/core/utils/assets.dart';
import 'package:my_task/core/utils/styles.dart';

class DiscountBadge extends StatelessWidget {
  final String discount;
  final Color backgroundColor, textColor;
  final String? suffixText;
  const DiscountBadge({
    super.key,
    required this.discount,
    required this.backgroundColor,
    required this.textColor,
    this.suffixText,
  });

  @override
  Widget build(BuildContext context) {
    String discountText =
        'خصم $discount%${suffixText != null ? ' $suffixText' : ''}';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: kBorderRadius / 2,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AssetsData.tag,
            height: 20,
            width: 20,
            color: textColor,
          ),
          const SizedBox(width: 5),
          Text(
            discountText,
            style: Styles.textStyle12.copyWith(
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
