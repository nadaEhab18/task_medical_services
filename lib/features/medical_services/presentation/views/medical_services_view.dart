import 'package:flutter/material.dart';
import 'package:my_task/core/utils/styles.dart';
import 'package:my_task/features/medical_services/presentation/views/medical_services_view_body.dart';

class MedicalServicesView extends StatelessWidget {
  const MedicalServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('محفوظات',style: Styles.textStyle14,),
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 16,
          ),
        ),
      ),
      body: const MedicalServicesViewBody()
    );
  }
}
