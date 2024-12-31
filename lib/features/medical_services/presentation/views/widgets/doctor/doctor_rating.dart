import 'package:flutter/material.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/image_item.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/rating_item.dart';

class DoctorRating extends StatelessWidget {
  const DoctorRating({
    super.key,
    required this.docImage,
    required this.screenHeight,
    required this.docRating,
    required this.screenWidth,
  });

  final String docImage;
  final double screenHeight, screenWidth;
  final String docRating;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// doctor Image
        ImageItem(
          imageUrl: docImage,
          screenHeight: screenHeight * 0.16,
          screenWidth: screenWidth * 0.19,
        ),

        /// doctor Rating
        RatingItem(
          screenWidth: screenWidth * 0.19,
          rating: '4.9',
          opacity: 0.6,
        ),
      ],
    );
  }
}
