import 'package:flutter/material.dart';
import 'package:my_task/constant.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/image_item.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/rating_item.dart';

class LabRating extends StatelessWidget {
  final String imageUrl, rating;
  final double screenHeight;
  final double screenWidth;

  const LabRating({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.imageUrl,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Lab Image
        ImageItem(
          screenHeight: screenHeight * 0.17,
          screenWidth: double.infinity,
          imageUrl: imageUrl,
          backgroundOpacity: 0.9,
          colorFilterColor: MyColors.blackColor,
          colorFilterOpacity: 0.2,
        ),

        /// Lab Rating
        RatingItem(
          screenWidth: screenWidth - 32,
          rating: '4.9',
          opacity: 0.9,
        ),
      ],
    );
  }
}
