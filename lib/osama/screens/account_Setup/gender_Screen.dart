// ignore_for_file: sized_box_for_whitespace, file_names

import 'package:bayfit/osama/screens/account_Setup/accSetup_Screen.dart';
import 'package:bayfit/controls/bottomNavigationAccSetup.dart';
import 'package:bayfit/controls/buttonField.dart';
import 'package:bayfit/controls/genderWidegt.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/utils/app_Strings.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../utils/app_colors.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  String selectedGender = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationAccSetup(context, 0),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration:
            const BoxDecoration(color: AppColors.main_linerGradientBottom),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Spacer(
                flex: 3,
              ),
              text(context, AppStrings.gendertitle, 32.0,
                  color: AppColors.whiteColor,
                  textAlignn: TextAlign.center,
                  fontFamily: "ArchivoSemiBold"),
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: text(context, AppStrings.genderdesc, 18.0,
                    color: AppColors.onBoRDINGlIGHTgREYcOLOR,
                    textAlignn: TextAlign.center),
              ),
              const Spacer(
                flex: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  gender(
                      context,
                      selectedGender == "male"
                          ? AppColors.SecondaryColor
                          : AppColors.darkColor,
                      AppImages.genderMale,
                      selectedGender == "male"
                          ? AppColors.whiteColor
                          : AppColors.SecondaryColor, () {
                    setState(() {
                      selectedGender = "male";
                    });
                  }),
                  gender(
                      context,
                      selectedGender == "female"
                          ? AppColors.SecondaryColor
                          : AppColors.darkColor,
                      AppImages.genderFemale,
                      selectedGender == "female"
                          ? AppColors.whiteColor
                          : AppColors.SecondaryColor, () {
                    setState(() {
                      selectedGender = "female";
                    });
                  }),
                ],
              ),
              const Spacer(
                flex: 8,
              ),
              buttonField(
                  context, MediaQuery.of(context).size.width * 0.8, 50.0, () {
                AppRoutes.push(context, PageTransitionType.rightToLeft,
                    const AccSetupScreen());
              }, AppColors.SecondaryColor, "Continue", 18.0,
                  textcolor: AppColors.whiteColor),
            ]),
      ),
    );
  }
}
