import 'package:bayfit/controls/navigation.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/osama/chat/Widget/msgsending_widget.dart';
import 'package:bayfit/utils/app_colors.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:flutter/material.dart';

class MainChatScreen extends StatefulWidget {
  const MainChatScreen({super.key});

  @override
  State<MainChatScreen> createState() => _MainChatScreenState();
}

class _MainChatScreenState extends State<MainChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.main_linerGradientBottom,
      appBar: AppBar(
        backgroundColor: AppColors.main_linerGradientBottom,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: containerline(context),
            )),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
              color: AppColors.onBoRDINGlIGHTgREYcOLOR),
          onPressed: () {
            // Handle back button press here
          },
        ),
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(AppImages.profile),
              radius: 20,
            ),
            const SizedBox(width: 8),
            text(context, "Michael Jae", 18.0,
                fontFamily: "Archivo",
                color: AppColors.whiteColor,
                fontweight: FontWeight.w500),
          ],
        ),
      ),
      body: Column(
        children: [
          text(context, "Today  7:35 am", 10.0,
              fontFamily: "Archivo",
              color: AppColors.onBoRDINGlIGHTgREYcOLOR,
              fontweight: FontWeight.w400),
          Expanded(child: msgSend(context)),
          Expanded(child: msgResponse(context, img: false, time: true)),
          buttonSending(context),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
