// ignore_for_file: file_names

import 'package:bayfit/osama/screens/mainMenu/main_screen.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../utils/app_colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) =>
        {AppRoutes.push(context, PageTransitionType.fade, const MainScreen())});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            AppImages.mainLogo,
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
        ],
      ),
    );
  }
}
