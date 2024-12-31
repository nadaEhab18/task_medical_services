import 'package:flutter/material.dart';
import 'package:my_task/core/widgets/mark_icon.dart';
import 'package:my_task/core/widgets/message_input_field.dart';

class MessageBar extends StatelessWidget {
  const MessageBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MarkIcon(),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: MessageInputField(),
        ),
      ],
    );
  }
}
