import 'package:d_locker/Modals/onBoardingModel.dart';
import 'package:d_locker/Widgets/onBoardingPageWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingController extends GetxController{

  final controller = LiquidController();
  RxInt currentPage = 0.obs;


  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: 'assets/on-boarding-image-1.jpg',
        title: 'Keep Your Data Safe and Secure',
        subTitle: 'Never worry about losing important documents again with our data vault feature',
        bgColor: Colors.blue,
      ),
      SingIn_widget: false,
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: 'assets/on-boarding-image-2.jpg',
        title: 'Pass on Your Legacy with Ease',
        subTitle: 'Transfer your digital legacy to your loved ones seamlessly with our data legacy transfer feature.',
        bgColor: Colors.yellow,
      ),
      SingIn_widget: false,
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: 'assets/on-boarding-image-3.jpg',
        title: 'Convenient and Secure Payments',
        subTitle: 'Make payments on-the-go with our digital wallet feature, without compromising on security.',
        bgColor: Colors.red,
      ),
      SingIn_widget: true,
    ),
  ];


  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
  onPageChangedCallback(int activePageIndex) => currentPage.value = activePageIndex;
}