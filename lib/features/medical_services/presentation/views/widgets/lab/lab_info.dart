import 'package:flutter/material.dart';
import 'package:my_task/core/utils/styles.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/discount_badge.dart';

class LabInfo extends StatelessWidget {
  final String itemName;
  final String discount;
  final Color badgeBackgroundColor;
  final Color badgeTextColor;

  const LabInfo({
    super.key,
    required this.itemName,
    required this.discount,
    required this.badgeBackgroundColor,
    required this.badgeTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// lab Name
        Text(
          itemName,
          style: Styles.textStyle18,
        ),
        const SizedBox(height: 10),

        /// lab Discount Badge
        DiscountBadge(
          discount: discount,
          backgroundColor: badgeBackgroundColor,
          textColor: badgeTextColor,
        ),
      ],
    );
  }
}
