import 'package:flutter/material.dart';
import 'package:my_task/features/medical_services/data/models/item_model.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/doctor/doctor_info.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/doctor/doctor_rating.dart';

class DoctorCard extends StatelessWidget {
  final ItemModel doctorModel;
  const DoctorCard({
    super.key,
    required this.screenHeight,
    required this.doctorModel, required this.screenWidth,
  });

  final double screenHeight,screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.18,
      child: Row(
        children: [
          /// Profile Image & Rating
          Expanded(
            flex: 1,
            child: DoctorRating(
              screenWidth: screenWidth,
                docImage: doctorModel.imageUrl,
                screenHeight: screenHeight,
                docRating: doctorModel.itemRating),
          ),

          /// Doctor Info (name - Specialty - discount)
          Expanded(
            flex: 3,
            child: DoctorInfo(
              doctorModel: doctorModel,),
          ),
        ],
      ),
    );
  }
}
