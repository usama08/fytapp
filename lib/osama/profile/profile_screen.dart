import 'package:bayfit/controls/navigation.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/osama/chat/maincat_screen.dart';
import 'package:bayfit/osama/profile/changepassword.dart';
import 'package:bayfit/osama/profile/edirgoals_screen.dart';
import 'package:bayfit/osama/profile/editprofile_screen.dart';
import 'package:bayfit/osama/profile/privacy_screen.dart';
import 'package:bayfit/osama/profile/termscondition_screeen.dart';
import 'package:bayfit/utils/app_colors.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.main_linerGradientBottom,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                AppImages.gymByeLogo,
                height: 45,
                width: 45,
              ),
              const SizedBox(
                width: 125,
              ),
              GestureDetector(
                onTap: () {
                  AppRoutes.push(
                      context, PageTransitionType.fade, const EditProfile());
                },
                child: Image.asset(
                  AppImages.profileedit,
                  height: 45,
                  width: 45,
                ),
              ),
            ],
          ),
          text(context, "Profile", 24.0,
              fontFamily: "Archivo",
              color: AppColors.whiteColor,
              fontweight: FontWeight.w500),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 97,
            height: 97,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey, // You can set a background color if needed
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    AppImages.profile), // Replace with your image path
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          text(context, "Michael Jae", 24.0,
              fontFamily: "Archivo",
              color: AppColors.whiteColor,
              fontweight: FontWeight.w500),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              richtext(context, "68", "kg", "Weight"),
              Container(
                width: 2,
                height: 40,
                color: AppColors.whiteColor,
              ),
              richtext(context, "175", "cm", "Height"),
              Container(
                width: 2,
                height: 40,
                color: AppColors.whiteColor,
              ),
              richtext(context, "21", "yo", "Age"),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          profileNaviagtion(
            context,
            "Edit Goals",
            AppImages.editgoal,
            () {
              AppRoutes.push(
                  context, PageTransitionType.fade, const EditGoalsScreen());
            },
          ),
          const SizedBox(
            height: 15,
          ),
          containerline(context),
          profileNaviagtion(
            context,
            "Change Password",
            AppImages.lock,
            () {
              AppRoutes.push(
                  context, PageTransitionType.fade, const ChangePassword());
            },
          ),
          const SizedBox(
            height: 15,
          ),
          containerline(context),
          profileNaviagtion(
            context,
            "Privacy Policy",
            AppImages.privacy,
            () {
              AppRoutes.push(
                  context, PageTransitionType.fade, const PrivacyScreen());
            },
          ),
          const SizedBox(
            height: 15,
          ),
          containerline(context),
          profileNaviagtion(
            context,
            "Terms & Conditions",
            AppImages.termscondition,
            () {
              AppRoutes.push(
                  context, PageTransitionType.fade, const TermsCondition());
            },
          ),
          const SizedBox(
            height: 15,
          ),
          containerline(context),
          profileNaviagtion(
            context,
            "Log Out",
            AppImages.editgoal,
            () {
              AppRoutes.push(
                  context, PageTransitionType.fade, const MainChatScreen());
            },
          )
        ],
      ),
    );
  }
}
