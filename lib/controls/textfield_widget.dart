import 'package:bayfit/utils/app_colors.dart';
import 'package:flutter/material.dart'; 

class CustomtextFormfield extends StatefulWidget {
  final TextEditingController controller;
  final String hinttext;
  final String label;
  final TextInputType inputType;
  final bool obscureText;
  final bool readOnly;
  final Color baseColor;
  final Color borderColor;
  final Color errorColor;
  final Color fillColor;
  final IconData? prefixIconData;
  final IconData? suffixIconData;
  final ValueChanged<bool>? onPrefixIconTap;

  const CustomtextFormfield({
    required this.controller,
    required this.hinttext,
    required this.label,
    required this.inputType,
    required this.obscureText,
    required this.readOnly,
    required this.baseColor,
    required this.borderColor,
    required this.errorColor,
    required this.fillColor,
    this.prefixIconData,
    this.suffixIconData,
    this.onPrefixIconTap,
  });

  @override
  State<CustomtextFormfield> createState() => _CustomtextFormfieldState();
}

class _CustomtextFormfieldState extends State<CustomtextFormfield> {
  late Color currentColor;
  late String errorText;
  bool obsecure=true;
  @override
  void initState() {
    super.initState();
    currentColor = widget.borderColor;
    errorText = '';
    validateInput(errorText);
    setState(() {
      obsecure=widget.obscureText;
    });
  }

  void validateInput(String input) {
    setState(() {
      errorText = input.isEmpty ? 'This field is required.' : '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 48,
            child: TextFormField(
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              obscureText: obsecure,
              controller: widget.controller,
              onChanged: validateInput,
              decoration: InputDecoration(
                contentPadding:const EdgeInsets.only(top: 0),
                focusColor: Colors.white,
                filled: true,
                fillColor: widget.fillColor,
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(26)),
                hintStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFFFFFF),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(
                    width: 0.5,
                  ),
                ),
                hintText: widget.hinttext,
                prefixIcon: widget.prefixIconData != null
                    ? GestureDetector(
                        onTap: () {
                          if (widget.onPrefixIconTap != null) {
                            widget.onPrefixIconTap!(widget.obscureText);
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top:1.0),
                          child: Icon(
                            widget.prefixIconData,
                            size: 24,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      )
                    : null,
                suffixIcon: widget.suffixIconData != null
                    ? GestureDetector(
                      onTap: (){
                        setState(() {
                          
                            setState(() {
                               if(obsecure){
                                 obsecure=false;
                               }else{
                                 obsecure=true;
                               }
                            
                            });
                           
                        });
                      },
                      child: Icon(
                         obsecure?Icons.remove_red_eye: Icons.remove_red_eye_outlined,
                          size: 22,
                          color: AppColors.onBoRDINGlIGHTgREYcOLOR,
                        ),
                    )
                    : null,
              ),
            ),
          ),
         //const SizedBox(height: 6),
          // Text(
          //   errorText,
          //   style: TextStyle(
          //     color: widget.errorColor,
          //     fontSize: 12,
          //   ),
          // ),
        ],
      ),
    );
  }
}
