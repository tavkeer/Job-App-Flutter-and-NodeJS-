import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jobhub/views/common/app_bar.dart';
import 'package:jobhub/views/common/drawer/drawer_widget.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          text: "Profile",
          child: DrawerWidget(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const HeightSpacer(size: 20),
            Container(
              width: width,
              height: hieght * 0.12,
              decoration: BoxDecoration(
                color: Color(kLight.value),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(100),
                        ),
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://pbs.twimg.com/media/F5NOMSCWAAAtf-d?format=jpg&name=large',
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReusableText(
                            text: 'Ronaldo',
                            style: appstyle(
                              20,
                              Color(kDark.value),
                              FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                MaterialIcons.location_pin,
                                color: Color(kLightGrey.value),
                              ),
                              const SizedBox(width: 5),
                              ReusableText(
                                text: 'Washington DC',
                                style: appstyle(
                                  20,
                                  Color(kDarkGrey.value),
                                  FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Feather.edit,
                      size: 18,
                    ),
                  )
                ],
              ),
            ),
            const HeightSpacer(size: 20),
            Stack(
              children: [
                Container(
                  width: width,
                  height: hieght * 0.12,
                  decoration: BoxDecoration(
                    color: Color(kLightGrey.value),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        width: 60,
                        height: 70,
                        color: Color(kLight.value),
                        child: const Icon(
                          FontAwesome5Regular.file_pdf,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReusableText(
                            text: 'Resume for Job-Hub',
                            style: appstyle(
                              18,
                              Color(kDark.value),
                              FontWeight.w500,
                            ),
                          ),
                          ReusableText(
                            text: 'Job-Hub resume',
                            style: appstyle(
                              16,
                              Color(kDarkGrey.value),
                              FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 1),
                    ],
                  ),
                ),
                Positioned(
                  top: 2,
                  right: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: ReusableText(
                        text: 'Edit',
                        style: appstyle(
                          16,
                          Color(kOrange.value),
                          FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const HeightSpacer(size: 20),
            Container(
              width: width,
              height: hieght * 0.06,
              padding: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                color: Color(kLightGrey.value),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ReusableText(
                  text: 'ronaldo@gmail.com',
                  style: appstyle(
                    16,
                    Color(kDark.value),
                    FontWeight.w600,
                  ),
                ),
              ),
            ),
            const HeightSpacer(size: 20),
            Container(
              width: width,
              height: hieght * 0.06,
              padding: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                color: Color(kLightGrey.value),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/usa.svg',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ReusableText(
                      text: '+1-0987654321',
                      style: appstyle(
                        16,
                        Color(kDark.value),
                        FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const HeightSpacer(size: 20),
            Container(
              padding: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                color: Color(kLightGrey.value),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ReusableText(
                      text: 'Skills',
                      style: appstyle(
                        16,
                        Color(kDark.value),
                        FontWeight.w600,
                      ),
                    ),
                  ),
                  const HeightSpacer(size: 3),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: skills.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final String skill = skills[index];
                          String bullet = '\u2022';
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              width: width,
                              height: hieght * 0.06,
                              child: ReusableText(
                                text: '$bullet $skill',
                                style: appstyle(
                                    16, Color(kDark.value), FontWeight.normal),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
