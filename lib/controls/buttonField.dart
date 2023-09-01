// ignore_for_file: file_names

import 'package:flutter/material.dart';

Widget buttonField(context,
     width,
     height,
     onTap,
     bgColor,
     text, textsize,
    {textcolor = "", fontweight = "", fontFamily = "", maxLines = 1, iconWidget="", iconWidth=0.0, iconHeight=0.0}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
       ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         if(iconWidget!="")...[
          Image.asset(iconWidget,width: iconWidth, height: iconHeight,),
          const SizedBox(width: 20,),
         ] ,
          Text(
            text,
            style: TextStyle(
              color: textcolor == "" ? Colors.black : textcolor,
              fontSize: textsize,
              fontWeight: fontweight == "" ? FontWeight.normal : fontweight,
              fontFamily: fontFamily == "" ? 'ArchivoSemiBold' : fontFamily,
            ),
            maxLines: maxLines,
          ),
        ],
      ),
    ),
  );

}