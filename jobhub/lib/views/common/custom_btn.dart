import 'package:flutter/material.dart';
import 'package:jobhub/views/common/exports.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap, this.text, this.color});

  final void Function()? ontap;
  final String? text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        height: hieght * 0.065,
        decoration: BoxDecoration(
          color: Color(kOrange.value),
          borderRadius: BorderRadius.circular(9),
        ),
        child: Center(
            child: Text(
          text ?? "",
          style: appstyle(
            15,
            color ?? Color(kLight.value),
            FontWeight.w600,
          ),
        )),
      ),
    );
  }
}
