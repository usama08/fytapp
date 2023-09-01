import 'package:bayfit/utils/app_colors.dart';
import 'package:flutter/material.dart';

Widget text(context, text, size,
    {color = "",
    fontweight = "",
    fontFamily = "",
    maxLines = 9,
    textAlignn = ""}) {
  return Text(
    text,
    textAlign: textAlignn == "" ? TextAlign.start : textAlignn,
    style: TextStyle(
      color: color == "" ? Colors.black : color,
      fontSize: size,
      fontWeight: fontweight == "" ? FontWeight.normal : fontweight,
      fontFamily: fontFamily == "" ? 'ArchivoRegular' : fontFamily,
    ),
    maxLines: maxLines,
  );
}

///////////   rich text profile ///////////

Widget richtext(context, text1, text2, text3) {
  return Column(
    children: [
      RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
              text: text1,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: AppColors.whiteColor,
                fontFamily: 'ArchivoRegular',
              ),
            ),
            const TextSpan(text: ' '),
            TextSpan(
              text: text2,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.onBoRDINGlIGHTgREYcOLOR,
                fontFamily: 'ArchivoRegular',
              ),
            ),
          ],
        ),
      ),
      Text(
        text3,
        style: const TextStyle(
          fontSize: 16,
          color: AppColors.onBoRDINGlIGHTgREYcOLOR,
          fontFamily: 'ArchivoRegular',
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}
