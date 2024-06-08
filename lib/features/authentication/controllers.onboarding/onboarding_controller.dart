import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:philbert_store/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //variables

  //~first thing is to create a pagecontroller
  //and get the current state of the current index
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //~obs (observer) is a widget which is goin
  //to change the design without using statefull widget

  //update current index page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //jump to the specific dot  selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //update the current index and jump to the next one
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;

      pageController.jumpToPage(page);
    }
  }

  //update the current index and jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
