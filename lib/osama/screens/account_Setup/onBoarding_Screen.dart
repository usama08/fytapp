// ignore_for_file: sized_box_for_whitespace, file_names

import 'package:bayfit/osama/screens/account_Setup/gender_Screen.dart';
import 'package:bayfit/controls/buttonField.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/utils/app_Strings.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../utils/app_colors.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.main_linerGradientTop,
              AppColors.main_linerGradientTop
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            if (counter == 0) ...[
              Container(
                  height: MediaQuery.of(context).size.height * 0.58,
                  child: Image.asset(AppImages.onBoarding1)),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: text(context, AppStrings.onBoarding1title, 32.0,
                    color: AppColors.whiteColor, fontFamily: "ArchivoSemiBold"),
              ),
              const Spacer(
                flex: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: text(context, AppStrings.onBoarding1desc, 18.0,
                    color: AppColors.onBoRDINGlIGHTgREYcOLOR,
                    textAlignn: TextAlign.center),
              ),
              const Spacer(),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return counter == index
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: index == 0 ? 0 : 10, top: 4, bottom: 4),
                              child: Container(
                                width: 38,
                                height: 8,
                                decoration: const BoxDecoration(
                                    color: AppColors.SecondaryColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7))),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                    color: AppColors.whiteColor,
                                    shape: BoxShape.circle),
                              ),
                            );
                    }),
              ),
              const Spacer(),
              buttonField(
                  context, MediaQuery.of(context).size.width * 0.4, 50.0, () {
                setState(() {
                  if (counter == 2) {
                    counter = 0;
                  } else {
                    counter++;
                  }
                });
              }, AppColors.SecondaryColor, "Continue", 18.0,
                  textcolor: AppColors.whiteColor),
              const Spacer(
                flex: 1,
              ),
              InkWell(
                  onTap: () {
                    AppRoutes.push(context, PageTransitionType.rightToLeft,
                        const GenderScreen());
                  },
                  child: text(context, "Skip", 18.0,
                      color: AppColors.SecondaryColor)),
              const Spacer()
            ] else if (counter == 1) ...[
              Container(
                  height: MediaQuery.of(context).size.height * 0.58,
                  child: Image.asset(AppImages.onBoarding2)),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: text(context, AppStrings.onBoarding2title, 32.0,
                    color: AppColors.whiteColor,
                    fontFamily: "ArchivoSemiBold",
                    textAlignn: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: text(context, AppStrings.onBoarding2desc, 18.0,
                    color: AppColors.onBoRDINGlIGHTgREYcOLOR,
                    textAlignn: TextAlign.center),
              ),
              const Spacer(),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return counter == index
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: index == 0 ? 0 : 10, top: 4, bottom: 4),
                              child: Container(
                                width: 38,
                                height: 8,
                                decoration: const BoxDecoration(
                                    color: AppColors.SecondaryColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                    color: AppColors.whiteColor,
                                    shape: BoxShape.circle),
                              ),
                            );
                    }),
              ),
              const Spacer(),
              buttonField(
                  context, MediaQuery.of(context).size.width * 0.4, 50.0, () {
                setState(() {
                  if (counter == 2) {
                    counter = 0;
                  } else {
                    counter++;
                  }
                });
              }, AppColors.SecondaryColor, "Continue", 18.0,
                  textcolor: AppColors.whiteColor),
              const Spacer(
                flex: 1,
              ),
              InkWell(
                  onTap: () {
                    AppRoutes.push(context, PageTransitionType.rightToLeft,
                        const GenderScreen());
                  },
                  child: text(context, "Skip", 18.0,
                      color: AppColors.SecondaryColor)),
              const Spacer()
            ] else ...[
              Container(
                  height: MediaQuery.of(context).size.height * 0.58,
                  child: Image.asset(AppImages.onBoarding3)),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: text(context, AppStrings.onBoarding3title, 32.0,
                    color: AppColors.whiteColor,
                    fontFamily: "ArchivoSemiBold",
                    textAlignn: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: text(context, AppStrings.onBoarding3desc, 18.0,
                    color: AppColors.onBoRDINGlIGHTgREYcOLOR,
                    textAlignn: TextAlign.center),
              ),
              const Spacer(),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return counter == index
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: index == 0 ? 0 : 10, top: 4, bottom: 4),
                              child: Container(
                                width: 38,
                                height: 8,
                                decoration: const BoxDecoration(
                                    color: AppColors.SecondaryColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                    color: AppColors.whiteColor,
                                    shape: BoxShape.circle),
                              ),
                            );
                    }),
              ),
              const Spacer(),
              buttonField(
                  context, MediaQuery.of(context).size.width * 0.4, 50.0, () {
                setState(() {
                  if (counter == 2) {
                    counter = 0;
                  } else {
                    counter++;
                  }
                });
              }, AppColors.SecondaryColor, "Continue", 18.0,
                  textcolor: AppColors.whiteColor),
              const Spacer(
                flex: 1,
              ),
              InkWell(
                  onTap: () {
                    AppRoutes.push(context, PageTransitionType.rightToLeft,
                        const GenderScreen());
                  },
                  child: text(context, "Skip", 18.0,
                      color: AppColors.SecondaryColor)),
              const Spacer()
            ],
          ],
        ),
      ),
    );
  }
}
