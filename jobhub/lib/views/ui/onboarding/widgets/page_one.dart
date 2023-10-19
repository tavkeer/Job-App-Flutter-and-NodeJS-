import 'package:flutter/material.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hieght,
      color: Color(kDarkPurple.value),
      child: Column(
        children: [
          const HeightSpacer(size: 70),
          Image.asset('assets/images/page1.png'),
          const HeightSpacer(size: 40),
          ReusableText(
            text: 'Find Your Dream Job',
            style: appstyle(30, Color(kLight.value), FontWeight.w500),
          ),
          const HeightSpacer(size: 10),
          Text(
            'We help find your dream job according to your, location and preference to build your career',
            textAlign: TextAlign.center,
            style: appstyle(14, Color(kLight.value), FontWeight.normal),
          )
        ],
      ),
    );
  }
}
