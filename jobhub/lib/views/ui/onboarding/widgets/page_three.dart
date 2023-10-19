import 'package:flutter/material.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hieght,
      color: Color(kLightBlue.value),
      child: Column(
        children: [
          Image.asset('assets/images/page3.png'),
          const HeightSpacer(size: 20),
          ReusableText(
            text: 'Welcome To JobHub',
            style: appstyle(
              30,
              Color(kLight.value),
              FontWeight.w500,
            ),
          ),
          const HeightSpacer(size: 15),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'We help find your dream job according to your, location and preference to build your career',
              textAlign: TextAlign.center,
              style: appstyle(
                14,
                Color(kLight.value),
                FontWeight.normal,
              ),
            ),
          ),
          const HeightSpacer(size: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: null,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: width * 0.4,
                  height: hieght * 0.06,
                  child: Center(
                    child: ReusableText(
                      text: 'Login',
                      style: appstyle(
                        16,
                        Color(kLight.value),
                        FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: null,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(kLight.value),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: width * 0.4,
                  height: hieght * 0.06,
                  child: Center(
                    child: ReusableText(
                      text: 'SignUp',
                      style: appstyle(
                        16,
                        Color(kLightBlue.value),
                        FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const HeightSpacer(size: 20),
          ReusableText(
            text: 'Continue as Guest',
            style: appstyle(
              16,
              Color(kLight.value),
              FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
