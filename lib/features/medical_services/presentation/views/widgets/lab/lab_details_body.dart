import 'package:flutter/material.dart';
import 'package:my_task/features/medical_services/data/models/item_model.dart';
import 'package:my_task/core/widgets/corner_badge.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/lab/lab_details.dart';

class LabDetailsBody extends StatelessWidget {
  const LabDetailsBody({super.key, required this.labModel});
  final ItemModel labModel;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        /// lab details
        LabDetails(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            itemModel: labModel),

        /// lab Corner badge
        Positioned(
          top: 10,
          left: 20,
          child: CornerBadge(item: labModel),
        )
      ],
    );
  }
}
