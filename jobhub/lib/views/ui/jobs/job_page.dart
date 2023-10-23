import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/views/common/app_bar.dart';
import 'package:jobhub/views/common/custom_outline_btn.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';
import 'package:jobhub/views/common/reusable_text.dart';

class JobPage extends StatefulWidget {
  const JobPage({super.key, required this.title, required this.id});
  final String title;
  final String id;

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomAppBar(
          text: widget.title,
          actions: const [
            Icon(Icons.bookmark_outline),
            SizedBox(width: 10),
          ],
          child: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(CupertinoIcons.arrow_left),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.zero,
              children: [
                const HeightSpacer(size: 30),
                Container(
                  width: width,
                  height: hieght * 0.27,
                  decoration: BoxDecoration(
                    color: Color(kLightGrey.value),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/user.png'),
                      ),
                      const HeightSpacer(size: 10),
                      ReusableText(
                        text: 'Senior Flutter Developer',
                        style: appstyle(
                          22,
                          Color(kDark.value),
                          FontWeight.w600,
                        ),
                      ),
                      const HeightSpacer(size: 5),
                      ReusableText(
                        text: 'New York',
                        style: appstyle(
                          16,
                          Color(kDarkGrey.value),
                          FontWeight.normal,
                        ),
                      ),
                      const HeightSpacer(size: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomOutlineBtn(
                              width: width * 0.26,
                              height: hieght * 0.04,
                              text: 'Full-Time',
                              color: Color(kOrange.value),
                              color2: Color(kLight.value),
                            ),
                            Row(
                              // mainAxisAlignment: ,
                              children: [
                                ReusableText(
                                  text: '10k',
                                  style: appstyle(
                                    22,
                                    Color(kDark.value),
                                    FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.2,
                                  child: ReusableText(
                                    text: '/monthly ',
                                    style: appstyle(
                                      22,
                                      Color(kDarkGrey.value),
                                      FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
