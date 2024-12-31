import 'package:flutter/material.dart';
import 'package:my_task/constant.dart';
import 'package:my_task/core/utils/styles.dart';
import 'package:my_task/features/medical_services/data/models/item_model.dart';
import 'package:super_banners/super_banners.dart';

class CornerBadge extends StatelessWidget {
  const CornerBadge({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return CornerBanner(
      bannerPosition: CornerBannerPosition.topLeft,
      bannerColor: MyColors.tealColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Text(
          item.itemBadge,
          style: Styles.textStyle12.copyWith(
            color: MyColors.whiteColor
          ),
        ),
      ),
    );
  }
}
