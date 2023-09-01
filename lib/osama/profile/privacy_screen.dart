import 'package:bayfit/controls/text.dart';

import 'package:bayfit/providers/accSetup_Provider.dart';

import 'package:bayfit/utils/app_colors.dart';
import 'package:bayfit/utils/app_images.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AccSetupProvider>(builder: (contexts, accSetupProvider, _) {
      return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.main_linerGradientBottom,
          body:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
            text(context, "Privacy Policy", 24.0,
                fontFamily: "Archivo",
                color: AppColors.whiteColor,
                fontweight: FontWeight.w500),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 15),
              child: text(
                  context,
                  "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available",
                  14.0,
                  fontFamily: "Archivo",
                  color: AppColors.whiteColor,
                  fontweight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 15),
              child: text(
                  context,
                  "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to ",
                  14.0,
                  fontFamily: "Archivo",
                  color: AppColors.whiteColor,
                  fontweight: FontWeight.w400),
            ),
          ]));
    });
  }
}
