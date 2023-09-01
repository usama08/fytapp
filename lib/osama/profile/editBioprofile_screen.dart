import 'dart:io';

import 'package:bayfit/controls/buttonField.dart';
import 'package:bayfit/controls/custom_dialougeBox.dart';
import 'package:bayfit/controls/goals.dart';
import 'package:bayfit/controls/navigation.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/osama/screens/account_Setup/tellUsAbout_screen.dart';
import 'package:bayfit/utils/app_Strings.dart';

import 'package:bayfit/utils/app_colors.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:bayfit/utils/app_routes.dart';
// import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';

class ProfileUpdateBio extends StatefulWidget {
  const ProfileUpdateBio({super.key});

  @override
  State<ProfileUpdateBio> createState() => _ProfileUpdateBioState();
}

class _ProfileUpdateBioState extends State<ProfileUpdateBio> {
  File? _image, _image1, _image2;
  bool clearPic1 = false;
  bool clearPic = false;
  bool clearPic2 = false;
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
      backgroundColor: AppColors.main_linerGradientBottom,
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.gymByeLogo,
              height: 45,
              width: 45,
            ),
          ],
        ),
        text(context, "Edit Profile", 24.0,
            fontFamily: "Archivo",
            color: AppColors.whiteColor,
            fontweight: FontWeight.w500),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 113,
                  height: 174,
                  child: InkWell(
                    onTap: () {
                      imagePickermethod(1);
                    },
                    child: _image == null || clearPic == false
                        ? Image.asset(
                            AppImages.addpic,
                            fit: BoxFit.fill,
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.file(
                              _image!,
                              fit: BoxFit.fill,
                            )),
                  ),
                ),
                if (clearPic == true) ...[
                  Positioned(
                    right: 5,
                    top: 0,
                    child: InkWell(
                      onTap: () {
                        if (mounted) {
                          setState(() {
                            _image = null;
                            clearPic = false;
                          });
                        }
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          AppImages.delpic,
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  )
                ]
              ],
            ),
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 113,
                  height: 174,
                  child: InkWell(
                    onTap: () {
                      imagePickermethod(2);
                    },
                    child: _image1 == null || clearPic1 == false
                        ? Image.asset(
                            AppImages.addpic,
                            fit: BoxFit.fill,
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.file(
                              _image!,
                              fit: BoxFit.fill,
                            )),
                  ),
                ),
                if (clearPic1 == true) ...[
                  Positioned(
                    right: 5,
                    top: 0,
                    child: InkWell(
                      onTap: () {
                        if (mounted) {
                          setState(() {
                            _image1 = null;
                            clearPic1 = false;
                          });
                        }
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          AppImages.delpic,
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  )
                ]
              ],
            ),
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 113,
                  height: 174,
                  child: InkWell(
                    onTap: () {
                      imagePickermethod(3);
                    },
                    child: _image2 == null || clearPic2 == false
                        ? Image.asset(
                            AppImages.addpic,
                            fit: BoxFit.fill,
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.file(
                              _image!,
                              fit: BoxFit.fill,
                            )),
                  ),
                ),
                if (clearPic2 == true) ...[
                  Positioned(
                    right: 5,
                    top: 0,
                    child: InkWell(
                      onTap: () {
                        if (mounted) {
                          setState(() {
                            _image2 = null;
                            clearPic2 = false;
                          });
                        }
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          AppImages.delpic,
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  )
                ]
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        //workout Goals
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: text(context, AppStrings.setbio, 18.0,
                          color: AppColors.onBoRDINGlIGHTgREYcOLOR)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: text(
                          context,
                          "Love biking, swimming and lifting! Looking for a fellow bodybuilder ",
                          14.0,
                          color: AppColors.onBoRDINGlIGHTgREYcOLOR)),
                  const SizedBox(height: 15),
                  containerline(context),
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
                      context, MediaQuery.of(context).size.width * 0.8, 50.0,
                      () {
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
                  // ignore: prefer_const_constructors
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  final imagepicker = ImagePicker();
  Future imagePickermethod(int check) async {
    final pick = await imagepicker.pickImage(source: ImageSource.gallery);

    if (pick != null) {
      CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: pick.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ],
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Cropper',
              toolbarColor: AppColors.SecondaryColor,
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(
            title: 'Cropper',
          ),
        ],
      );
      if (croppedFile != null) {
        if (mounted) {
          setState(() {
            if (check == 1) {
              _image = File(croppedFile.path);
              clearPic = true;
            } else if (check == 2) {
              _image1 = File(croppedFile.path);
              clearPic1 = true;
            } else {
              _image2 = File(croppedFile.path);
              clearPic2 = true;
            }
          });
        }
      }
    } else {}
  }
}
