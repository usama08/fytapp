import 'package:bayfit/utils/app_colors.dart';
import 'package:flutter/material.dart';

Widget bottomNavigationAccSetup(context, counter
    ) {
  return 
     Container(
        color:  AppColors.main_linerGradientBottom,
        height: 60,
        child: Center(
          child: ListView.builder(
             itemCount: 5,
             shrinkWrap: true,
             scrollDirection: Axis.horizontal,
             itemBuilder: (BuildContext context, int index) {
               return 
               index==counter?
               Padding(
                 padding:   EdgeInsets.only(left:index==0?0: 5,top: 20,bottom: 25),
                 child: Container(
                    width:60,
                   height: 9,
                   decoration: const BoxDecoration(
                     color: AppColors.SecondaryColor,
                     borderRadius: BorderRadius.all(Radius.circular(7))
                   ),
                   
                 ),
                 
               ):
               Padding(
                 padding:   EdgeInsets.only(left:index==0?0: 5,top: 20,bottom: 25),
                 child: Container(
                   
                   width:60,
                   height: 9,
                   decoration:   BoxDecoration(
                     color: AppColors.whiteColor.withOpacity(0.25),
                     borderRadius: const BorderRadius.all(Radius.circular(7))
                   ),
                   
                 ));
             }),
        ),
      );
     
}