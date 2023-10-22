import 'package:flutter/material.dart';
import 'package:jobhub/views/common/exports.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({super.key, required this.text, this.ontap});
  final String text;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ReusableText(
          text: text,
          style: appstyle(
            20,
            Color(kDark.value),
            FontWeight.w600,
          ),
        ),
        GestureDetector(
          onTap: ontap,
          child: ReusableText(
            text: 'View All',
            style: appstyle(
              18,
              Color(kOrange.value),
              FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
