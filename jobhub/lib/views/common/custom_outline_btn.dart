import 'package:flutter/material.dart';
import 'package:jobhub/views/common/exports.dart';

class CustomOutlineBtn extends StatelessWidget {
  const CustomOutlineBtn({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    this.ontap,
    required this.color,
    required this.color2,
  });
  final double width;
  final double height;
  final String text;
  final void Function()? ontap;
  final Color color;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color2,
          border: Border.all(width: 1, color: color),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: ReusableText(
            text: text,
            style: appstyle(16, color, FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
