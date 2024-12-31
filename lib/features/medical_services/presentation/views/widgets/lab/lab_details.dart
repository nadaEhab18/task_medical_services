import 'package:flutter/material.dart';
import 'package:my_task/constant.dart';
import 'package:my_task/core/utils/functions/build_box_decoration.dart';
import 'package:my_task/features/medical_services/data/models/item_model.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/item_feature_details.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/lab/lab_card.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/lab/message_bar.dart';

class LabDetails extends StatelessWidget {
  const LabDetails({
    super.key,
    required this.screenHeight,
    required this.itemModel,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPadding,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: buildBoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Lab Name & image & Rating
          LabCard(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
              lab: itemModel),

          const SizedBox(height: 10),

          /// Lab address & phone & FeatureDetails
          ItemFeatureDetails(item: itemModel),

          const SizedBox(
            height: 10,
          ),

          /// Message bar
          const MessageBar()
        ],
      ),
    );
  }
}
