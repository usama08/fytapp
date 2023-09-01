import 'package:bayfit/controls/buttonField.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/controls/textfield_widget.dart';
import 'package:bayfit/utils/app_colors.dart';
import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  TextEditingController password = TextEditingController();
  TextEditingController comfirmpassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  void _sendButtonPressed() {
    if (_formKey.currentState!.validate()) {
      if (password.text != comfirmpassword.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Confirm password does not match.'),
          ),
        );
      } else {
        print('Password confirmed: ${password.text}');
      }
    }
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
          text(context, "Reset Password", 32.0,
              color: AppColors.whiteColor, fontFamily: "ArchivoBold"),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: text(
                context,
                "Your password must be different and above than 8 characters",
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
                    controller: password,
                    errorColor: Colors.red,
                    fillColor: const Color(0xff45595E),
                    hinttext: "Password",
                    inputType: TextInputType.text,
                    label: "Password",
                    obscureText: true,
                    readOnly: false,
                    onPrefixIconTap: (value) {},
                    prefixIconData: Icons.lock,
                    suffixIconData: Icons.remove_red_eye,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomtextFormfield(
                    baseColor: Colors.black,
                    borderColor: const Color(0xff45595E),
                    controller: comfirmpassword,
                    errorColor: Colors.red,
                    fillColor: const Color(0xff45595E),
                    hinttext: "Confirm Password",
                    inputType: TextInputType.text,
                    label: "Confirm Password",
                    obscureText: true,
                    readOnly: false,
                    onPrefixIconTap: (value) {},
                    prefixIconData: Icons.lock,
                    suffixIconData: Icons.remove_red_eye,
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
                  context, PageTransitionType.fade, const NewPassword());
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
            }, AppColors.SecondaryColor, "Confirm Password", 20.0,
                textcolor: AppColors.whiteColor),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}