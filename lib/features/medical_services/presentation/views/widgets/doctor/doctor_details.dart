import 'package:flutter/material.dart';
import 'package:my_task/constant.dart';
import 'package:my_task/core/utils/functions/build_box_decoration.dart';
import 'package:my_task/features/medical_services/data/models/item_model.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/doctor/doctor_actions.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/doctor/doctor_card.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/item_feature_details.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({
    super.key,
    required this.screenHeight,
    required this.doctorModel, required this.screenWidth,
  });

  final double screenHeight,screenWidth;
  final ItemModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPadding,
      margin:const EdgeInsets.only(right:20,left: 20,bottom: 30,top: 10),
      decoration: buildBoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Doctor card info
          DoctorCard(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            doctorModel: doctorModel,
          ),
          const SizedBox(height: 10),

          /// doctor address & phone & FeatureDetails
          ItemFeatureDetails(item: doctorModel),
          const SizedBox(
            height: 10,
          ),

          /// doctor Actions
          const DoctorActions()
        ],
      ),
    );
  }
}
