import 'package:bayfit/controls/text.dart';
import 'package:bayfit/utils/app_colors.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:flutter/material.dart';

Widget msgSend(context) {
  return Container(
    padding: const EdgeInsets.all(16),
    alignment: Alignment.centerRight,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: const BoxDecoration(
            color: AppColors.SecondaryColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(0)),
          ),
          padding: const EdgeInsets.all(12),
          child: text(context, "Hello, how are you?", 16.0,
              color: AppColors.whiteColor),
        ),
        const SizedBox(height: 4),
        text(context, "Seen", 12.0, color: AppColors.onBoRDINGlIGHTgREYcOLOR),
      ],
    ),
  );
}

Widget msgResponse(context, {bool img = true, image, bool time = true}) {
  return Container(
    padding: const EdgeInsets.all(16),
    alignment: Alignment.centerLeft,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            img
                ? Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImages
                            .profile), // Replace with your image asset path
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : Text(""),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: const BoxDecoration(
                    color: AppColors.SecondaryColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(10)),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: text(context, "I'm fine!", 16.0,
                      color: AppColors.whiteColor),
                ),
                const SizedBox(height: 4),
                time
                    ? text(context, "08:00 AM", 12.0,
                        color: AppColors.onBoRDINGlIGHTgREYcOLOR)
                    : Text(""),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget buttonSending(context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.07,
    decoration: BoxDecoration(
        color: AppColors.onBoRDINGlIGHTgREYcOLOR,
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Type a message...",
              border: InputBorder.none,
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            // Handle send button press here
          },
        ),
      ],
    ),
  );
}
