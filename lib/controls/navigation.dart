import 'package:bayfit/controls/text.dart';
import 'package:bayfit/utils/app_colors.dart';
import 'package:flutter/material.dart';

Widget profileNaviagtion(
  context,
  text1,
  image,
  Function() onpress,
) {
  return GestureDetector(
    onTap: onpress,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.SecondaryColor,
                  image: DecorationImage(
                    image: AssetImage(image), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              text(context, text1, 20.0,
                  fontFamily: 'Archivo',
                  color: AppColors.onBoRDINGlIGHTgREYcOLOR,
                  fontweight: FontWeight.w400),
            ],
          ),
        ),
        const Icon(
          Icons.chevron_right,
          size: 35,
          color: AppColors.onBoRDINGlIGHTgREYcOLOR,
        )
      ],
    ),
  );
}

///////////  container line  ////////////
Widget containerline(context) {
  return Container(
    width: 393,
    height: 0.5,
    color: AppColors.onBoRDINGlIGHTgREYcOLOR,
  );
}
