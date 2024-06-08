import 'package:flutter/material.dart';
import 'package:philbert_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:philbert_store/utils/constants/sizes.dart';
import 'package:philbert_store/utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: PDeviceUtils.getAppBarHeight(),
        right: PSizes.defaultSpace,
        child: TextButton(
            onPressed: () => OnBoardingController.instance.skipPage,
            child: const Text('Skip')));
  }
}
