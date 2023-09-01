
import 'package:flutter/material.dart';

class AccSetupProvider with ChangeNotifier {
  //gym value
  String gym="";
   selectedgym(String value) async { 
    gym=value;
    notifyListeners();
  }

  //age value
  int age=30;
   selectedAge(int value) async { 
    age=value;
    notifyListeners();
  }
 //height value
  int height=30;
   selectedheight(int value) async { 
    height=value;
    notifyListeners();
  }
  //weight value
  int weight=30;
   selectedweight(int value) async { 
    weight=value;
    notifyListeners();
  }
}