import 'package:bayfit/controls/text.dart';
import 'package:bayfit/osama/screens/registration_login/confirmPassword_screen.dart';
import 'package:bayfit/utils/app_colors.dart';
import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _verifyEmailScreenState createState() => _verifyEmailScreenState();
}

class _verifyEmailScreenState extends State<VerifyEmailScreen> {
  List<String> enteredDigits = List.filled(4, '');
  int currentDigitIndex = 0;

  void _handleDigitPress(String digit) {
    if (currentDigitIndex < 4) {
      setState(() {
        enteredDigits[currentDigitIndex] = digit;
        currentDigitIndex++;
      });

      if (currentDigitIndex == 4) {
        AppRoutes.push(
            context, PageTransitionType.fade, const ComfirmPassword());
      }
    }
  }

  void _handleBackspacePress() {
    if (currentDigitIndex > 0) {
      setState(() {
        currentDigitIndex--;
        enteredDigits[currentDigitIndex] = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.main_linerGradientBottom,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 5,
          ),
          text(context, "Verify Email", 32.0,
              color: AppColors.whiteColor, fontFamily: "ArchivoBold"),
          const Spacer(),
          text(context,
              "Please enter the code which we have sent on your email Id", 18.0,
              color: AppColors.whiteColor, textAlignn: TextAlign.center),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var digit in enteredDigits)
                Container(
                  width: 41,
                  height: 41,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 77, 76, 75),
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Center(
                      child: text(context, digit, 24.0,
                          color: AppColors.whiteColor)),
                ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.3),
          Wrap(
            runSpacing: 10,
            spacing: 10,
            children: [
              for (var i = 1; i <= 9; i++) _buildDigitButton(i.toString()),
              const SizedBox(width: 124, height: 47),
              _buildDigitButton('0'),
              _buildBackspaceButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDigitButton(String digit) {
    return GestureDetector(
      onTap: () => _handleDigitPress(digit),
      child: Container(
        width: 124,
        height: 47,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 77, 76, 75),
          border: Border.all(),
        ),
        child: Center(
          child: Text(
            digit,
            style: const TextStyle(fontSize: 24, color: AppColors.whiteColor),
          ),
        ),
      ),
    );
  }

  Widget _buildBackspaceButton() {
    return GestureDetector(
      onTap: _handleBackspacePress,
      child: Container(
        width: 124,
        height: 47,
        color: Colors.transparent,
        child: const Center(
          child: Icon(
            Icons.backspace,
            size: 24,
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
