// ignore_for_file: file_names

import 'package:bayfit/utils/app_colors.dart';
import 'package:flutter/material.dart';

Widget goalsButton(context,
     
     height,
     onTap,
     bgColor,
     text, textsize,
    {textcolor = "", fontweight = "", fontFamily = "", maxLines = 1, iconWidget="", iconWidth=0.0, iconHeight=0.0}) {
  return InkWell(
    onTap: onTap,
    child: Container(
         height: height,
         
         decoration: BoxDecoration(
           color: bgColor,
           borderRadius: const BorderRadius.all(Radius.circular(22)),
           border: Border.all(width: 1,color: AppColors.SecondaryColor)
          ),
         child: Wrap(
           
           children:[
                Padding(
                  padding: const EdgeInsets.only(left:5.0, right: 5.0, top: 3),
                  child: Row(
                     mainAxisSize: MainAxisSize.min,
                    
                   children: [
                    if(iconWidget!="")...[
                             const SizedBox(width: 5,),
                             Image.asset(iconWidget,width: iconWidth, height: iconHeight,),
                             const SizedBox(width: 5,),
                    ] ,
                             Padding(
                               padding: const EdgeInsets.only(left:5.0, right: 5),
                               child: Text(
                                 text,
                                 style: TextStyle(
                                   color: textcolor == "" ? Colors.black : textcolor,
                                   fontSize: textsize,
                                   fontWeight: fontweight == "" ? FontWeight.normal : fontweight,
                                   fontFamily: fontFamily == "" ? 'ArchivoRegular' : fontFamily,
                                 ),
                                 maxLines: maxLines,
                               ),
                             ),
                   ],
                                 ),
                ),
                 
           ]
         ),
       ),
  );

}