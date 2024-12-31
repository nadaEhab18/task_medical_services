import 'package:flutter/material.dart';
import 'package:my_task/core/utils/assets.dart';
import 'package:my_task/features/medical_services/data/models/item_model.dart';
import 'package:my_task/core/widgets/corner_badge.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/doctor/doctor_details.dart';

class DoctorDetailsBody extends StatelessWidget {
  DoctorDetailsBody({
    super.key,
  });

  final ItemModel doctorModel = ItemModel(
      imageUrl: AssetsData.profileImage,
      itemName: 'أ.د. أحمد فايز عبدالفتاح',
      itemSpecialty: 'أستاذ دكتور أنف وأذن وحنجرة بجامعة أسيوط',
      itemAddress: 'طما, ش الثورة بجوار مسجد الوحدة',
      itemBadge: 'كشف منزل',
      itemDiscount: '25',
      itemPhone: '+20 11245555555',
      itemRating: '4.9',
      features: [
        'يوجد جهاز إيكو',
        'متابعة دورية بنص السعر كل 3 شهور',
      ]);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        /// doctor details
        DoctorDetails(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            doctorModel: doctorModel),

        /// doctor Corner badge
        Positioned(
          top: 10,
          left: 20,
          child: CornerBadge(item: doctorModel),
        )
      ],
    );
  }
}
