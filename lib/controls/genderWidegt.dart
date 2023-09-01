import 'package:bayfit/utils/app_colors.dart';
import 'package:flutter/material.dart';

Widget gender(context, color, iconString, iconColor, ontap
     ) {
  return  InkWell(
    onTap: ontap,
    child: Container(
      width: 125,
      height: 125,
      decoration: BoxDecoration(
        color: color,
       shape: BoxShape.circle,
       border: Border.all(width: 2, color: AppColors.SecondaryColor)
      ),
      child: Center(child: Image.asset(iconString, width: 50,height: 52,color:iconColor,)),
    ),
  );

}