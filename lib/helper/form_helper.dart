import 'package:flutter/material.dart';

import '../utils/config.dart';
import '../utils/mycolors.dart';
class CustomTextFiled extends StatelessWidget {

  final String hinText;
  final TextInputType? kebordtype;
  final bool? secqure;
  final Widget? suffixIcon;
  const CustomTextFiled({super.key, required this.hinText, this.kebordtype, this.secqure, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: kebordtype,
      obscureText: secqure ?? false,
      style: TextStyle(
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        hintText: hinText,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: MyColors.primaryColors.withOpacity(.2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),

      ),
    );
  }
}
