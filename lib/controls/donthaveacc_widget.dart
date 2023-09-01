import 'package:bayfit/utils/app_colors.dart';
import 'package:flutter/material.dart';

//////////   textwidget  /////////////////
Widget accounttext(BuildContext context, text1, text2, Function onpress) {
  return GestureDetector(
    onTap: onpress(),
    child: RichText(
      text: TextSpan(
        text: text1,
        style: const TextStyle(color: Colors.grey), // Color for the first part
        children: <TextSpan>[
          TextSpan(
            text: text2,
            style: const TextStyle(
                color:AppColors.SecondaryColor), // Color for the second part
            // You can add more style properties here if needed
          ),
        ],
      ),
    ),
  );
}