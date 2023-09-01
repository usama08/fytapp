import 'package:bayfit/controls/buttonField.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/utils/app_colors.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:flutter/material.dart';


class DataTracking extends StatelessWidget {
  const DataTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.main_linerGradientBottom,
      body: Column(
         
        children: [
          const Spacer(flex: 2,),
            text(context, "Data Tracking", 32.0,color: AppColors.whiteColor,fontFamily: "ArchivoBold"),
          const SizedBox(height: 15,),
            Padding(
             padding: const EdgeInsets.only(left:10.0, right: 10.0),
             child: text(context, " We need to get access for track your progress", 18.0,color: AppColors.whiteColor, textAlignn: TextAlign.center ),
           ),
           const SizedBox(height: 15,),
         
          Center(
            child: Image.asset(
              AppImages.dataTracking,
              width: 140,height: 290,
            ),
          ),
         const Spacer(flex: 2,),
           Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: buttonField(context, double.infinity, 44.0, (){
                //  AppRoutes.push(context, PageTransitionType.fade, const SignUpScreen());
                      
                      }, AppColors.SecondaryColor, "Allow Access", 20.0, textcolor: AppColors.whiteColor),
              ),
               const SizedBox(height: 15,),
          Container(
             decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color:  AppColors.SecondaryColor, width: 1.0),
              ),
            ),
            child: text(context, "Skip for now", 18.0, color: AppColors.SecondaryColor))
          ,const SizedBox(height: 15,),
        ],
      ),
    );
  }
}
