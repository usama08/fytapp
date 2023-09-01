// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SizeConfig { 
  static MediaQueryData? _mediaQueryData;
   static double? screenWidth;
  static double? screenHeight; 
  static double? screenWidthPixel; 
  static double? textScaleFactor; 
  static double? devicePixelRatio;

   
 
  void init(BuildContext context) { 
    _mediaQueryData = MediaQuery.of(context);
    screenWidth=_mediaQueryData!.size.width;
    screenHeight=_mediaQueryData!.size.height;
    devicePixelRatio = _mediaQueryData!.devicePixelRatio;
    screenWidthPixel =screenWidth! * devicePixelRatio!;
     setScreenSizes();
    
  }
    setScreenSizes(){
    //mobile
     if(screenWidthPixel! < 650){

     }
     //Tablet
     else{

     }
    }
}