import 'package:bayfit/controls/buttonField.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/controls/textfield_widget.dart';
import 'package:bayfit/osama/profile/editBioprofile_screen.dart';
import 'package:bayfit/osama/screens/account_Setup/selectGym_screen.dart';
import 'package:bayfit/providers/accSetup_Provider.dart';
import 'package:bayfit/utils/app_Strings.dart';
import 'package:bayfit/utils/app_colors.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  int age = 3;
  TextEditingController editusername = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<AccSetupProvider>(builder: (contexts, accSetupProvider, _) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.main_linerGradientBottom,
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios_outlined,
                    color: AppColors.onBoRDINGlIGHTgREYcOLOR,
                  )),
              const SizedBox(
                width: 125,
              ),
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
          Stack(
            children: [
              Container(
                width: 97,
                height: 97,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      Colors.grey, // You can set a background color if needed
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        AppImages.profile), // Replace with your image path
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                right: 0,
                child: Container(
                  width: 27,
                  height: 27,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.SecondaryColor,
                  ),
                  child: IconButton(
                    onPressed: () {
                      AppRoutes.push(context, PageTransitionType.fade,
                          const ProfileUpdateBio());
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CustomtextFormfield(
            baseColor: Colors.black,
            borderColor: const Color(0xff45595E),
            controller: editusername,
            errorColor: Colors.red,
            fillColor: const Color(0xff45595E),
            hinttext: "Michael Jae",
            inputType: TextInputType.text,
            label: "Michael Jae",
            obscureText: false,
            readOnly: true,
            onPrefixIconTap: (value) {},
            prefixIconData: Icons.edit,
            suffixIconData: null,
          ),
          const SizedBox(
            height: 10,
          ),
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
          const Spacer(
            flex: 2,
          ),
          buttonField(context, MediaQuery.of(context).size.width * 0.8, 50.0,
              () {
            AppRoutes.push(context, PageTransitionType.rightToLeft,
                const SelectGymScreen());
          }, AppColors.SecondaryColor, "Save", 18.0,
              textcolor: AppColors.whiteColor),
          const SizedBox(
            height: 20,
          ),
        ]),
      );
    });
  }
}

// ignore: must_be_immutable
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
