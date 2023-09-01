// ignore_for_file: sized_box_for_whitespace, file_names

import 'package:bayfit/osama/screens/account_Setup/tellUsAbout_screen.dart';
import 'package:bayfit/controls/bottomNavigationAccSetup.dart';
import 'package:bayfit/controls/buttonField.dart';
import 'package:bayfit/controls/custom_dialougeBox.dart';
import 'package:bayfit/controls/goals.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/utils/app_Strings.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../utils/app_colors.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  List fitnessGoalsList = [
    'Weight loss',
    'Muscle gain',
    ' Strength training',
    ' Strength training',
    ' Strength training'
  ];
  List selectedFitnessGoalsList = [];
  String workoutSchedule = "";
  String workoutHours = "";
  String trainingStyle = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.main_linerGradientTop,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.main_linerGradientBottom,
        title: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Image.asset(
            AppImages.gymByeLogo,
            height: 45,
            width: 45,
          ),
        ),
        leading: InkWell(
          onTap: () {
            AppRoutes.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.whiteColor,
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationAccSetup(context, 3),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration:
            const BoxDecoration(color: AppColors.main_linerGradientBottom),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //  const Spacer(flex: 2,),

                text(context, AppStrings.setgoaltitle, 32.0,
                    color: AppColors.whiteColor,
                    textAlignn: TextAlign.center,
                    fontFamily: "ArchivoSemiBold"),
                const Spacer(
                  flex: 1,
                ),
                //fitness Goals
                Align(
                    alignment: Alignment.centerLeft,
                    child: text(context, AppStrings.setgoal1, 18.0,
                        color: AppColors.whiteColor)),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: fitnessGoalsList.map((item) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                        child: goalsButton(context, 28.0, () {
                          setState(() {
                            if (selectedFitnessGoalsList.contains(item)) {
                              selectedFitnessGoalsList.remove(item);
                            } else {
                              selectedFitnessGoalsList.add(item);
                            }
                          });
                        },
                            selectedFitnessGoalsList.contains(item)
                                ? AppColors.SecondaryColor
                                : AppColors.darkColor,
                            item,
                            14.0,
                            textcolor: AppColors.whiteColor),
                      );
                    }).toList(),
                  ),
                ),
                const Spacer(),
                //fitness Goals
                Align(
                    alignment: Alignment.centerLeft,
                    child: text(context, AppStrings.setgoal2, 18.0,
                        color: AppColors.whiteColor)),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: fitnessGoalsList.map((item) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                        child: goalsButton(context, 28.0, () {
                          setState(() {
                            if (workoutSchedule == item) {
                              workoutSchedule = "";
                            } else {
                              workoutSchedule = item;
                            }
                          });
                        },
                            workoutSchedule == item
                                ? AppColors.SecondaryColor
                                : AppColors.darkColor,
                            item,
                            14.0,
                            textcolor: AppColors.whiteColor,
                            iconWidget: workoutSchedule == item
                                ? AppImages.selectedgoal
                                : "",
                            iconWidth: workoutSchedule == item ? 10.0 : "",
                            iconHeight: workoutSchedule == item ? 10.0 : ""),
                      );
                    }).toList(),
                  ),
                ),
                const Spacer(),
                //workout Hours
                Align(
                    alignment: Alignment.centerLeft,
                    child: text(context, AppStrings.setgoal3, 18.0,
                        color: AppColors.whiteColor)),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: fitnessGoalsList.map((item) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                        child: goalsButton(context, 28.0, () {
                          setState(() {
                            if (workoutHours == item) {
                              workoutHours = "";
                            } else {
                              workoutHours = item;
                            }
                          });
                        },
                            workoutHours == item
                                ? AppColors.SecondaryColor
                                : AppColors.darkColor,
                            item,
                            14.0,
                            textcolor: AppColors.whiteColor,
                            iconWidget: workoutHours == item
                                ? AppImages.selectedgoal
                                : "",
                            iconWidth: workoutHours == item ? 10.0 : "",
                            iconHeight: workoutHours == item ? 10.0 : ""),
                      );
                    }).toList(),
                  ),
                ),
                const Spacer(),
                //Training Style
                Align(
                    alignment: Alignment.centerLeft,
                    child: text(context, AppStrings.setgoal3, 18.0,
                        color: AppColors.whiteColor)),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: fitnessGoalsList.map((item) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                        child: goalsButton(context, 28.0, () {
                          setState(() {
                            if (trainingStyle == item) {
                              trainingStyle = "";
                            } else {
                              trainingStyle = item;
                            }
                          });
                        },
                            trainingStyle == item
                                ? AppColors.SecondaryColor
                                : AppColors.darkColor,
                            item,
                            14.0,
                            textcolor: AppColors.whiteColor,
                            iconWidget: trainingStyle == item
                                ? AppImages.selectedgoal
                                : "",
                            iconWidth: trainingStyle == item ? 10.0 : "",
                            iconHeight: trainingStyle == item ? 10.0 : ""),
                      );
                    }).toList(),
                  ),
                ),

                const Spacer(),
                buttonField(
                    context, MediaQuery.of(context).size.width * 0.8, 50.0, () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialog(
                          title: AppStrings.workoutWarningtitle,
                          description: AppStrings.workoutWarningdesc,
                          imagePath: AppImages.warning,
                          buttonText: "Confirm",
                          onPressed: () {
                            AppRoutes.pop(context);
                            AppRoutes.push(context, PageTransitionType.fade,
                                const TellUsAboutScreen());
                          });
                    },
                  );
                }, AppColors.SecondaryColor, "Save", 18.0,
                    textcolor: AppColors.whiteColor),
              ]),
        ),
      ),
    );
  }
}
