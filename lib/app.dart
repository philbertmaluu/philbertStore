import 'package:flutter/material.dart';
import 'package:philbert_store/features/authentication/screens/onbording/onboarding.dart';
import 'package:philbert_store/utils/theme/theme.dart';
import 'package:get/get.dart';

//------- This class is used for setting up theme ---------
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: PAppTheme.lightTheme,
      darkTheme: PAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
    );
  }
}
