import 'package:flutter/material.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/doctor/doctor_details_body.dart';
import 'package:my_task/features/medical_services/presentation/views/widgets/lab/list_of_labs.dart';
class MedicalServicesViewBody extends StatelessWidget {
  const MedicalServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {

   return CustomScrollView(
     slivers: [
       SliverToBoxAdapter(
         child: ListOfLabs(),
       ),
       SliverToBoxAdapter(
         child: DoctorDetailsBody(),
       ),
     ],
   );
  }
}
