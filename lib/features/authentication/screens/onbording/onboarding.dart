import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:philbert_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:philbert_store/features/authentication/screens/onbording/widgets/onboarding_next_button.dart';
import 'package:philbert_store/features/authentication/screens/onbording/widgets/onboardong_dot_navigation.dart';
import 'package:philbert_store/utils/constants/image_string.dart';
import 'package:philbert_store/utils/constants/text_strings.dart';
import 'package:philbert_store/features/authentication/screens/onbording/widgets/onboarding_page.dart';
import 'package:philbert_store/features/authentication/screens/onbording/widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //for the backend  we create an new instance of out controller  and since we are using GetX package for
    //state management then we use Get.put insteady of new  for for class instanciation
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: PImages.onboardingImage2,
                title: PTexts.onBoadingText1,
                subTitle: PTexts.onBoadingSubTittle1,
              ),
              OnboardingPage(
                image: PImages.onboardingImage1,
                title: PTexts.onBoadingText2,
                subTitle: PTexts.onBoadingSubTittle2,
              ),
              OnboardingPage(
                image: PImages.onboardingImage3,
                title: PTexts.onBoadingText3,
                subTitle: PTexts.onBoadingSubTittle3,
              )
            ],
          ),

          //skipping buttons
          const OnboardingSkip(),

          //dots for Navigation smooth page indicator package is used
          const OnboadardingDotNavigation(),

          //circular button
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
