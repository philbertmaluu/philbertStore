import 'package:flutter/material.dart';

import 'package:philbert_store/utils/helpers/helper_functions.dart';
import 'package:philbert_store/utils/constants/sizes.dart';
//import 'package:philbert_store/utils/constants/text_strings.dart';
//import 'package:philbert_store/utils/device/device_utility.dart';
//import 'package:philbert_store/utils/constants/image_string.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.subTitle,
    required this.title,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: PHelperfunction.screenWidth() * 0.8,
            height: PHelperfunction.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: PSizes.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
