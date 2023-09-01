// ignore_for_file: sized_box_for_whitespace, file_names

import 'dart:io';

import 'package:bayfit/controls/bottomNavigationAccSetup.dart';
import 'package:bayfit/controls/buttonField.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/osama/screens/registration_login/login_screen.dart';
import 'package:bayfit/utils/app_Strings.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';

import '../../../utils/app_colors.dart';

class TellUsAboutScreen extends StatefulWidget {
  const TellUsAboutScreen({super.key});

  @override
  State<TellUsAboutScreen> createState() => _TellUsAboutScreenState();
}

class _TellUsAboutScreenState extends State<TellUsAboutScreen> {
  File? _image, _image1, _image2;
  bool clearPic1 = false;
  bool clearPic = false;
  bool clearPic2 = false;
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
      bottomNavigationBar: bottomNavigationAccSetup(context, 4),
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
                text(context, AppStrings.tellustitle, 32.0,
                    color: AppColors.whiteColor,
                    textAlignn: TextAlign.center,
                    fontFamily: "ArchivoSemiBold"),
                const SizedBox(
                  height: 10,
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
                const Spacer(),
                buttonField(
                    context, MediaQuery.of(context).size.width * 0.8, 50.0, () {
                  AppRoutes.push(
                      context, PageTransitionType.fade, LogInScreen());
                }, AppColors.SecondaryColor, "Save", 18.0,
                    textcolor: AppColors.whiteColor),
              ]),
        ),
      ),
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
