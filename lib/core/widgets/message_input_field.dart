import 'package:flutter/material.dart';
import 'package:my_task/constant.dart';
import 'package:my_task/core/utils/assets.dart';

class MessageInputField extends StatelessWidget {
  const MessageInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'مراسلة الصيدلية',
          hintStyle: const TextStyle(
            color: MyColors.greyBorderColor,
            fontSize: 12,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(AssetsData.message,height: 30,),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: kBorderRadius,
            borderSide: const BorderSide(color: MyColors.greyBorderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: kBorderRadius,
            borderSide: const BorderSide(color: MyColors.greyBorderColor),
          ),
        ),
      ),
    );
  }
}
