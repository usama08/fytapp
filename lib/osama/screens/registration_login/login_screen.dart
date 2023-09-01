import 'package:bayfit/controls/buttonField.dart';
import 'package:bayfit/controls/socialmedia_widget.dart';
import 'package:bayfit/controls/text.dart';
import 'package:bayfit/controls/textfield_widget.dart';
import 'package:bayfit/osama/screens/registration_login/createAccount_screen.dart';
import 'package:bayfit/utils/app_colors.dart';
import 'package:bayfit/utils/app_images.dart';
import 'package:bayfit/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
// Import the flutter_svg library

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  void _sendButtonPressed() {
    // if (_formKey.currentState!.validate()) {

    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.main_linerGradientBottom,
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Image.asset(
            AppImages.mainLogo,
            height: 160.0,
            width: 120.0,
          ),
          const Spacer(),
          text(context, "Log in", 32.0,
              color: AppColors.whiteColor, fontFamily: "ArchivoBold"),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
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
                    obscureText: false,
                    readOnly: false,
                    onPrefixIconTap: (value) {},
                    prefixIconData: Icons.mail,
                    suffixIconData: null,
                  ),
                  const SizedBox(height: 10),
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
                  const SizedBox(height: 35.0),
                  text(context, "Forgot Password?", 18.0,
                      color: AppColors.SecondaryColor),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: buttonField(context, double.infinity, 44.0, () {
                      AppRoutes.push(context, PageTransitionType.fade,
                          const SignUpScreen());
                      //  if (email.text.isEmpty || password.text.isEmpty) {
                      //     ScaffoldMessenger.of(context).showSnackBar(
                      //       const SnackBar(
                      //         content: Text('Please Enter Your Email'),
                      //       ),
                      //     );
                      //   } else {
                      //     // Text fields are not empty, proceed with login
                      //     if (!isLoading) {
                      //       _sendButtonPressed();
                      //     }
                      //   }
                    }, AppColors.SecondaryColor, "Login", 20.0,
                        textcolor: AppColors.whiteColor),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  accounttext(
                      context, "Don't have an account ", "Register?", () {})
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
