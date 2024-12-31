import 'package:flutter/material.dart';
import 'package:my_task/core/utils/styles.dart';

class InfoRow extends StatelessWidget {
  final String text,imageUrl;
  final TextDirection? textDirection;
  final Color? textColor ;
  final FontWeight? textWeight;
  const InfoRow({
    super.key,required this.text,this.textDirection, required this.imageUrl, this.textColor, this.textWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(imageUrl,height: 15,width: 15,),
      const  SizedBox(width: 4),
        Flexible(
          child: Directionality(
            textDirection: textDirection ?? Directionality.of(context),
            child: Text(
              text,
              style:  Styles.textStyle12.copyWith(
                color: textColor ?? Styles.textStyle12.color,
                fontWeight: textWeight ?? Styles.textStyle12.fontWeight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
