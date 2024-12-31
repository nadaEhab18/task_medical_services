import 'package:flutter/material.dart';
import 'package:my_task/core/utils/assets.dart';
import 'package:my_task/features/medical_services/data/models/item_model.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/lab/lab_details_body.dart';

class ListOfLabs extends StatelessWidget {
  ListOfLabs({super.key});
  final List<ItemModel> labs = [
    ItemModel(
      imageUrl: AssetsData.backgroundLab_1,
      itemName: 'معمل الصفوة',
      itemAddress: 'الفشن, ش طريق المستشفي',
      itemBadge: 'سحب عينات من المنزل',
      itemDiscount: '15',
      itemPhone: '+20 1158368887',
      itemRating: '4.9',
      features: [
        'يوجد طبيبات اناث لسحب العينة اذا احتاجت الحالة',
        'ارسال نتيجة التحليل بعد 20 دقيقة عن طريق التطبيق أو الواتس'
      ],
    ),
    ItemModel(
      imageUrl: AssetsData.backgroundLab_2,
      itemName: 'مركز الحمد',
      itemAddress: 'طما, ش الثورة بجوار مسجد الوحدة',
      itemBadge: '  أشعة x-Ray متنقلة   ',
      itemDiscount: '10',
      itemPhone: '+20 11245555555',
      itemRating: '4.9',
      features: ['يوجد جهاز 180 درجة', 'يكون طبيب علاج طبيعي مع الجهاز'],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: labs.length,
      itemBuilder: (context, index) {
        return LabDetailsBody(
          labModel: labs[index],
        );
      },
    );
  }
}
