import 'package:flutter/material.dart';
import 'package:philbert_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:philbert_store/utils/constants/color.dart';
import 'package:philbert_store/utils/constants/sizes.dart';
import 'package:philbert_store/utils/device/device_utility.dart';
import 'package:philbert_store/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboadardingDotNavigation extends StatelessWidget {
  const OnboadardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = PHelperfunction.isDarkMode(context);
    //create the instance of the contoller

    return Positioned(
      bottom: PDeviceUtils.getButtomNavigationBarHeight() + 25,
      left: PSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        //onDotClicked: (index) => controller.dotNavigationClick(index),
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? PColors.light : PColors.dark, dotHeight: 6),
      ),
    );
  }
}
