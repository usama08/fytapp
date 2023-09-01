// ignore_for_file: sized_box_for_whitespace, file_names, must_be_immutable

import 'package:bayfit/osama/screens/account_Setup/selectGym_screen.dart';
import 'package:bayfit/controls/bottomNavigationAccSetup.dart';
import 'package:bayfit/controls/buttonField.dart';
import 'package:bayfit/controls/genderWidegt.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/providers/accSetup_Provider.dart';
import 'package:bayfit/utils/app_Strings.dart';
import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';

class AccSetupScreen extends StatefulWidget {
  const AccSetupScreen({super.key});

  @override
  State<AccSetupScreen> createState() => _AccSetupScreenState();
}

class _AccSetupScreenState extends State<AccSetupScreen> {
  int age = 3;
  @override
  Widget build(BuildContext context) {
    return Consumer<AccSetupProvider>(builder: (contexts, accSetupProvider, _) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          //toolbarHeight:30,
          backgroundColor: AppColors.main_linerGradientBottom,
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
        bottomNavigationBar: bottomNavigationAccSetup(context, 1),
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
            color: AppColors.main_linerGradientBottom,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                text(context, AppStrings.accsetuptitle, 32.0,
                    color: AppColors.whiteColor,
                    textAlignn: TextAlign.center,
                    fontFamily: "ArchivoSemiBold"),
                const Spacer(),
                text(context, AppStrings.accsetupq1, 18.0,
                    color: AppColors.whiteColor, textAlignn: TextAlign.center),
                const SizedBox(
                  height: 5,
                ),
                _IntegerExample(minvalue: 0, maxvalue: 120, check: "age"),
                const SizedBox(
                  height: 10,
                ),
                text(context, AppStrings.accsetupq2, 18.0,
                    color: AppColors.whiteColor, textAlignn: TextAlign.center),
                const SizedBox(
                  height: 5,
                ),
                _IntegerExample(minvalue: 0, maxvalue: 300, check: "height"),
                const SizedBox(
                  height: 10,
                ),
                text(context, AppStrings.accsetupq3, 18.0,
                    color: AppColors.whiteColor, textAlignn: TextAlign.center),
                const SizedBox(
                  height: 5,
                ),
                _IntegerExample(minvalue: 0, maxvalue: 300, check: "weight"),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    gender(
                        context,
                        accSetupProvider.gym == "member"
                            ? AppColors.SecondaryColor
                            : AppColors.darkColor,
                        AppImages.member,
                        accSetupProvider.gym == "member"
                            ? AppColors.whiteColor
                            : AppColors.SecondaryColor, () {
                      setState(() {
                        accSetupProvider.selectedgym("member");
                      });
                    }),
                    gender(
                        context,
                        accSetupProvider.gym == "trainer"
                            ? AppColors.SecondaryColor
                            : AppColors.darkColor,
                        AppImages.trainer,
                        accSetupProvider.gym == "trainer"
                            ? AppColors.whiteColor
                            : AppColors.SecondaryColor, () {
                      setState(() {
                        accSetupProvider.selectedgym("trainer");
                      });
                    }),
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                buttonField(
                    context, MediaQuery.of(context).size.width * 0.8, 50.0, () {
                  AppRoutes.push(context, PageTransitionType.rightToLeft,
                      const SelectGymScreen());
                }, AppColors.SecondaryColor, "Continue", 18.0,
                    textcolor: AppColors.whiteColor),
              ]),
        ),
      );
    });
  }
}

class _IntegerExample extends StatefulWidget {
  int maxvalue, minvalue;
  String check;
  _IntegerExample(
      {required this.maxvalue, required this.minvalue, required this.check});
  @override
  __IntegerExampleState createState() => __IntegerExampleState();
}

class __IntegerExampleState extends State<_IntegerExample> {
  int _currentHorizontalIntValue = 30;
  @override
  void initState() {
    super.initState();
    setState(() {
      _currentHorizontalIntValue = widget.check == "age"
          ? 30
          : widget.check == "height"
              ? 174
              : 64;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AccSetupProvider>(builder: (contexts, contentloading, _) {
      return NumberPicker(
        value: _currentHorizontalIntValue,
        minValue: widget.minvalue,
        maxValue: widget.maxvalue,
        step: 1,
        itemHeight: 70,
        itemWidth: 60,
        selectedTextStyle: const TextStyle(
            color: AppColors.SecondaryColor,
            fontSize: 32,
            fontFamily: "ArchivoSemiBold"),
        textStyle: const TextStyle(
            color: AppColors.onBoRDINGlIGHTgREYcOLOR,
            fontSize: 24,
            fontFamily: "ArchivoRegular"),
        axis: Axis.horizontal,
        onChanged: (value) => onChnaged(value),
      );
    });
  }

  onChnaged(int value) {
    setState(() => _currentHorizontalIntValue = value);
    if (widget.check == "age") {
      Provider.of<AccSetupProvider>(context, listen: false).selectedAge(value);
    } else if (widget.check == "height") {
      Provider.of<AccSetupProvider>(context, listen: false)
          .selectedheight(value);
    } else if (widget.check == "weight") {
      Provider.of<AccSetupProvider>(context, listen: false)
          .selectedweight(value);
    }
  }
}
