import 'package:flutter/material.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/controllers/exports.dart';
import 'package:jobhub/views/ui/onboarding/widgets/page_one.dart';
import 'package:jobhub/views/ui/onboarding/widgets/page_three.dart';
import 'package:jobhub/views/ui/onboarding/widgets/page_two.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Scaffold(
      body: Consumer<OnBoardNotifier>(
        builder: (context, onBoardNotifier, child) {
          return Stack(
            children: [
              PageView(
                physics: (onBoardNotifier.isLastPage)
                    ? const NeverScrollableScrollPhysics()
                    : const AlwaysScrollableScrollPhysics(),
                controller: pageController,
                onPageChanged: (value) {
                  onBoardNotifier.isLastPage = value == 2;
                },
                children: const [
                  PageOne(),
                  PageTwo(),
                  PageThree(),
                ],
              ),
              Positioned(
                bottom: hieght * 0.12,
                left: 0,
                right: 0,
                child: onBoardNotifier.isLastPage
                    ? const SizedBox.shrink()
                    : Center(
                        child: SmoothPageIndicator(
                          controller: pageController,
                          count: 3,
                          effect: WormEffect(
                            dotHeight: 12,
                            dotWidth: 12,
                            spacing: 10,
                            dotColor: Color(kDarkGrey.value),
                            activeDotColor: Color(kLight.value),
                          ),
                        ),
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}
