import 'package:bayfit/controls/buttonField.dart';
import 'package:bayfit/controls/donthaveacc_widget.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/controls/textfield_widget.dart';
import 'package:bayfit/osama/screens/forgotPassword/verifyEmail_screen.dart';
import 'package:bayfit/utils/app_colors.dart';
import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController email = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  void _sendButtonPressed() {
    if (_formKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.main_linerGradientBottom,
      body: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          text(context, "Forgot Password?", 32.0,
              color: AppColors.whiteColor, fontFamily: "ArchivoBold"),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: text(
                context,
                "Don’t worry!  We will send a verification code  to reset your password",
                18.0,
                color: AppColors.whiteColor,
                textAlignn: TextAlign.center),
          ),
          const SizedBox(
            height: 15,
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomtextFormfield(
                    baseColor: Colors.black,
                    borderColor: const Color(0xff45595E),
                    controller: email,
                    errorColor: Colors.red,
                    fillColor: const Color(0xff45595E),
                    hinttext: "Email",
                    inputType: TextInputType.text,
                    label: "Email",
                    obscureText: true,
                    readOnly: false,
                    onPrefixIconTap: (value) {},
                    prefixIconData: Icons.email,
                    suffixIconData: null,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: buttonField(context, double.infinity, 44.0, () {
              AppRoutes.push(
                  context, PageTransitionType.fade, const VerifyEmail());
              //  if (password.text.isEmpty ||
              //     comfirmpassword.text.isEmpty) {
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     const SnackBar(
              //       content: Text('Please Enter Your Passwords'),
              //     ),
              //   );
              // } else {
              //   _sendButtonPressed();
              // }
            }, AppColors.SecondaryColor, "Send", 20.0,
                textcolor: AppColors.whiteColor),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          accounttext(context, "Back to ", "Login ?", () {}),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        ],
      ),
    );
  }
}
