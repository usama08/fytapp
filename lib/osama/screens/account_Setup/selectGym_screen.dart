// ignore_for_file: sized_box_for_whitespace, file_names, must_be_immutable

import 'package:bayfit/osama/screens/account_Setup/workout_screen.dart';
import 'package:bayfit/controls/bottomNavigationAccSetup.dart';
import 'package:bayfit/controls/buttonField.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/controls/textfield_widget.dart';
import 'package:bayfit/providers/accSetup_Provider.dart';
import 'package:bayfit/utils/app_Strings.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../../../utils/app_colors.dart';

class SelectGymScreen extends StatefulWidget {
  const SelectGymScreen({super.key});

  @override
  State<SelectGymScreen> createState() => _SelectGymScreenState();
}

class _SelectGymScreenState extends State<SelectGymScreen> {
  List gymList = [
    'GYM 1',
    'GYM 2',
    'GYM 3',
    'GYM 4',
    'GYM 5',
    'GYM 6',
    'GYM 7',
    'GYM 8',
    'GYM 9',
    'GYM 10'
  ];
  List selectedgymList = [];
  TextEditingController serachController = TextEditingController();
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
        bottomNavigationBar: bottomNavigationAccSetup(context, 2),
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration:
              const BoxDecoration(color: AppColors.main_linerGradientBottom),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                text(context, AppStrings.selectGymtitle, 32.0,
                    color: AppColors.whiteColor,
                    textAlignn: TextAlign.center,
                    fontFamily: "ArchivoSemiBold"),
                const SizedBox(
                  height: 10,
                ),
                //search
                CustomtextFormfield(
                  baseColor: Colors.black,
                  borderColor: const Color(0xff45595E),
                  controller: serachController,
                  errorColor: Colors.red,
                  fillColor: const Color(0xff45595E),
                  hinttext: "Search",
                  inputType: TextInputType.text,
                  label: " ",
                  obscureText: false,
                  readOnly: false,
                  onPrefixIconTap: (value) {},
                  prefixIconData: Icons.search,
                  suffixIconData: null,
                ),
                const SizedBox(
                  height: 10,
                ),
                //gym list
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.605,
                  child: ListView.separated(
                    itemCount: gymList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                        child: ListTile(
                            leading: SizedBox(
                                height: 50,
                                child: Stack(children: [
                                  Image.asset(
                                    AppImages.gymIcon,
                                    height: 52,
                                    width: 52,
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      right: 1,
                                      child: Image.asset(
                                        AppImages.selectedGymIcon,
                                        height: 24,
                                        width: 24,
                                      ))
                                ])),
                            title: text(context, gymList[index], 18.0,
                                fontFamily: "ArchivoMedium",
                                color: AppColors.whiteColor)),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ),
                ),
                const Spacer(),
                buttonField(
                    context, MediaQuery.of(context).size.width * 0.8, 50.0, () {
                  AppRoutes.push(context, PageTransitionType.rightToLeft,
                      const WorkoutScreen());
                }, AppColors.SecondaryColor, "Continue", 18.0,
                    textcolor: AppColors.whiteColor),

                const Spacer(),
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
