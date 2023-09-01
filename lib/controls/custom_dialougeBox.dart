// ignore_for_file: must_be_immutable

import 'package:bayfit/controls/buttonField.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/utils/app_colors.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  
  final String title;
  final String description;
  final String imagePath;
  final String buttonText;
  final VoidCallback onPressed;

  CustomDialog({
    
    required this.title,
    required this.description,
    required this.imagePath,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 404,
          width: 337,
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: AppColors.darkColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.onBoRDINGlIGHTgREYcOLOR),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0, 1),
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: (){
                    AppRoutes.pop(context);
                  },
                  child: Image.asset(AppImages.removeDialouge, height: 24,width: 24,))
              ),
             const SizedBox(height: 10,),
              Image.asset(
                imagePath,
                height: 100,
                width: 100,
              ),
               const Spacer(),
              text(context, title, 32.0,fontFamily: "ArchivoSemiBold", color: AppColors.whiteColor),
               
              const SizedBox(height: 10),
               Padding(
                 padding: const EdgeInsets.only(left:20.0, right: 20),
                 child: text(context, description, 18.0,fontFamily: "ArchivoRegular", color: AppColors.whiteColor, textAlignn: TextAlign.center),
               ),
                
             
             const Spacer(),
              Padding(
                  padding: const EdgeInsets.only(left:20.0, right: 20.0),
                child: buttonField(context, MediaQuery.of(context).size.width, 44.0, onPressed, AppColors.SecondaryColor, buttonText, 20.0,textcolor: AppColors.whiteColor),
              )
              
            ],
          ),
        ),
      ],
    );
  }
}
