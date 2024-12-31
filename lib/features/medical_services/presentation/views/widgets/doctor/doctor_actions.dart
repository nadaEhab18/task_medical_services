import 'package:flutter/material.dart';
import 'package:my_task/core/widgets/action_button.dart';
import 'package:my_task/core/widgets/mark_icon.dart';

class DoctorActions extends StatelessWidget {
  const DoctorActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const MarkIcon(),
    const SizedBox(width: 10,),
        Expanded(
          child: ActionButton(
            text: 'كشف',
            onPressed: () {},
          ),
        ),
       Expanded(child:
        ActionButton(
          text: "إعادة",
          onPressed: () {},
        ),),
        Expanded(child:

        ActionButton(
          text: "إستشارة",
          onPressed: () {},
        ),
    ),
      ],
    );
  }
}
