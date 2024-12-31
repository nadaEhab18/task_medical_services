import 'package:flutter/material.dart';
import 'package:my_task/constant.dart';
import 'package:my_task/core/utils/assets.dart';
import 'package:my_task/core/utils/styles.dart';
import 'package:my_task/features/medical_services/data/models/item_model.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/row_info.dart';

class ItemFeatureDetails extends StatelessWidget {
  const ItemFeatureDetails({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Lab Address
        InfoRow(
          imageUrl: AssetsData.location,
          text: item.itemAddress,
        ),
        const SizedBox(height: 8),

        /// Lab phone with call
        Row(
          children: [
            InfoRow(
              imageUrl: AssetsData.mobile,
              text: item.itemPhone,
              textDirection: TextDirection.ltr,
            ),
            const Spacer(),
            Text('اتصال',
                style: Styles.textStyle12.copyWith(
                  color: MyColors.blueColor,
                  decoration: TextDecoration.underline,
                  decorationColor: MyColors.blueColor,
                )),
          ],
        ),
        const Divider(thickness: 1, color: MyColors.greyBorderColor),

        /// Lab features
        const SizedBox(height: 2),
        ...item.features.map(
          (feature) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: InfoRow(
              imageUrl: AssetsData.checker,
              text: feature,
              textColor: MyColors.blackColor,
              textWeight: FontWeight.w600,
            ),
          ),
        ),
        Image.asset(
          AssetsData.more,
          height: 25,
          width: 25,
        ),
      ],
    );
  }
}
