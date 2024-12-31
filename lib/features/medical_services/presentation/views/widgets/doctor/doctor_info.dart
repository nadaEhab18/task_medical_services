import 'package:flutter/material.dart';
import 'package:my_task/constant.dart';
import 'package:my_task/core/utils/styles.dart';
import 'package:my_task/features/medical_services/data/models/item_model.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/discount_badge.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({
    super.key,
    required this.doctorModel,
  });

  final ItemModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /// doctor name
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            doctorModel.itemName,
            style: Styles.textStyle18.copyWith(
                color: MyColors.blackColor, fontWeight: FontWeight.normal),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),

        /// doctor discount
        FittedBox(
          child: DiscountBadge(
            backgroundColor: MyColors.blueColor.withOpacity(0.1),
            textColor: MyColors.blueColor,
            discount: doctorModel.itemDiscount,
            suffixText: "للمشتركين",
          ),
        ),
        const SizedBox(height: 8),

        /// doctor Specialty
        Flexible(
          child: Text(
            doctorModel.itemSpecialty!,
            style: Styles.textStyle14.copyWith(color: MyColors.greyColor),
            maxLines: 2,
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    );
  }
}
