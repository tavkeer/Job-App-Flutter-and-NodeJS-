import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hieght,
      color: Color(kDarkBlue.value),
      child: Column(
        children: [
          const HeightSpacer(size: 70),
          Image.asset('assets/images/page2.png'),
          const HeightSpacer(size: 20),
          Text(
            'Stable Yourself\n With Your Ability',
            textAlign: TextAlign.center,
            style: appstyle(
              30,
              Color(kLight.value),
              FontWeight.w500,
            ),
          ),
          const HeightSpacer(size: 10),
          Padding(
            padding: EdgeInsets.all(8.h),
            child: Text(
              'We help find your dream job according to your, location and preference to build your career',
              textAlign: TextAlign.center,
              style: appstyle(
                14,
                Color(kLightGrey.value),
                FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
