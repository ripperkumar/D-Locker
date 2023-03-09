import 'package:d_locker/Controllers/onBoardingController.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obController = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            enableSideReveal: true,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangedCallback,
            slideIconWidget: const Icon(Icons.arrow_forward_ios),
            waveType:WaveType.liquidReveal,
          ),

          Positioned(
            top: 0,
            left: 10,
            child: Container(
              height: 110,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100.0),
                  topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(100.0)),
            ),

              child: TextButton(
                onPressed: () => obController.skip(),
                child: const Text("Skip", style: TextStyle(color: Colors.black,fontSize: 20)),
              ),
            ),
          ),
        ],
      ),
    );
  }


}