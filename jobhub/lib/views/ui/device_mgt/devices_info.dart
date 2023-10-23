import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhub/controllers/exports.dart';
import 'package:jobhub/views/common/app_bar.dart';
import 'package:jobhub/views/common/custom_outline_btn.dart';
import 'package:jobhub/views/common/drawer/drawer_widget.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';
import 'package:jobhub/views/ui/device_mgt/widgets/device_info.dart';
import 'package:jobhub/views/ui/onboarding/onboarding_screen.dart';
import 'package:provider/provider.dart';

class DeviceManagement extends StatelessWidget {
  const DeviceManagement({super.key});

  @override
  Widget build(BuildContext context) {
    final String loginDate = DateTime.now().toString().substring(0, 11);
    var zoomNotifier = Provider.of<ZoomNotifier>(context);
    var onBoardNotifier = Provider.of<OnBoardNotifier>(context);
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          text: "Device Management",
          child: DrawerWidget(),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeightSpacer(size: 50),
                  Text(
                    'Your are logged in to your account on these deviced',
                    style: appstyle(
                      16,
                      Color(kDark.value),
                      FontWeight.normal,
                    ),
                  ),
                  const HeightSpacer(size: 50),
                  DeviceInfo(
                    location: 'Washington DC',
                    device: 'MacBook Air M1',
                    platform: 'Apple Webkit',
                    date: loginDate,
                    ipAddress: '10.0.12:3000',
                  ),
                  const HeightSpacer(size: 20),
                  DeviceInfo(
                    location: 'Annynomus',
                    device: 'HP Pavillion',
                    platform: 'Windows 11',
                    date: loginDate,
                    ipAddress: '14.1.12:2717',
                  ),
                  const HeightSpacer(size: 20),
                ],
              ),
            ),
            Consumer<LoginNotifier>(builder: (context, loginNofifier, child) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomOutlineBtn(
                    ontap: () {
                      zoomNotifier.currentIndex = 0;
                      onBoardNotifier.isLastPage = false;
                      Get.to(() => const OnBoardingScreen());
                    },
                    width: width * 0.7,
                    height: hieght * 0.08,
                    text: 'Sign out of all devices',
                    color: Color(kLight.value),
                    color2: Color(kOrange.value),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
