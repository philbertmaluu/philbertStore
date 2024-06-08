import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:philbert_store/common/styles/spacing_styles.dart';
import 'package:philbert_store/utils/constants/image_string.dart';
import 'package:philbert_store/utils/constants/sizes.dart';
import 'package:philbert_store/utils/constants/text_strings.dart';
import 'package:philbert_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PHelperfunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: PSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //  logo title and subtitle.
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? PImages.lightAppLogo : PImages.darkAppLogo),
                  ),
                  Text(PTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: PSizes.sm),
                  Text(PTexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              //the form
              Form(
                  child: Column(children: [
                //email text field
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: PTexts.email,
                  ),
                ),
                const SizedBox(height: PSizes.spaceBtwInputFields),
                //password text field
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    labelText: PTexts.password,
                    suffixIcon: Icon(Iconsax.eye_slash),
                  ),
                ),
                const SizedBox(height: PSizes.spaceBtwInputFields / 2),
                //remember me & forget password
              ])),

              //divider
              // Column(
              //   children: [],
              // ),
              //lastly footer
              // Column(
              //   children: [],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
