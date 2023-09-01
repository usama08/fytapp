import 'package:bayfit/utils/app_colors.dart';
import 'package:flutter/material.dart'; 

Widget socialIcon(BuildContext context, image) {
  return Container(
    width: 36,
    height: 36,
    padding:const EdgeInsets.all(7),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      border: Border.all(color: AppColors.SecondaryColor, width: 1),
    ),
    child: Center(
      child: Image.asset(
        image,
      ),
    ),
  );
}

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
                color: Colors.blue), // Color for the second part
            // You can add more style properties here if needed
          ),
        ],
      ),
    ),
  );
}
