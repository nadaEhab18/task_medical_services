import 'package:flutter/material.dart';
import 'package:my_task/constant.dart';
import 'package:my_task/features/medical_services/data/models/item_model.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/lab/lab_info.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/lab/lab_rating.dart';

class LabCard extends StatelessWidget {
  const LabCard({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.lab,
  });

  final double screenHeight;
  final double screenWidth;
  final ItemModel lab;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Lab banner image & Rating
        LabRating(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            imageUrl: lab.imageUrl,
            rating: lab.itemRating),

        /// Lab name & discount
        Positioned(
          top: 15,
          right: 10,
          child: LabInfo(
            itemName: lab.itemName,
            discount: lab.itemDiscount,
            badgeBackgroundColor: MyColors.whiteColor.withOpacity(0.1),
            badgeTextColor: MyColors.whiteColor,
          ),
        ),
      ],
    );
  }
}
