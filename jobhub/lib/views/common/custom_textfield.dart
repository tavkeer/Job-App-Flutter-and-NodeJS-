import 'package:flutter/material.dart';
import 'package:jobhub/views/common/exports.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.keyboardType,
      this.obsecureText,
      this.hintText,
      this.suffixIcon,
      required this.controller,
      this.validator});
  final TextInputType keyboardType;
  final bool? obsecureText;
  final String? hintText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final String Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(kLightGrey.value),
        borderRadius: BorderRadius.circular(9),
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obsecureText ?? false,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          hintStyle: appstyle(
            14,
            Color(kDarkGrey.value),
            FontWeight.w400,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 0.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 0.5,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Color(kDarkGrey.value),
              width: 0.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 0.5,
            ),
          ),
          border: InputBorder.none,
        ),
        controller: controller,
        style: appstyle(
          14,
          Color(kDark.value),
          FontWeight.w500,
        ),
        validator: validator,
      ),
    );
  }
}
