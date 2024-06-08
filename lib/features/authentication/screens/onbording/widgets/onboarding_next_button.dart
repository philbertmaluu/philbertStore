import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:philbert_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:philbert_store/utils/constants/color.dart';
import 'package:philbert_store/utils/constants/sizes.dart';
import 'package:philbert_store/utils/device/device_utility.dart';
import 'package:philbert_store/utils/helpers/helper_functions.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = PHelperfunction.isDarkMode(context);

    return Positioned(
        bottom: PDeviceUtils.getButtomNavigationBarHeight(),
        right: PSizes.defaultSpace,
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage,
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? PColors.primary : Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
