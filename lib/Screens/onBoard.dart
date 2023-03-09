import 'package:d_locker/Screens/onBoarding_screen.dart';
import 'package:flutter/material.dart';
class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  static const String idScreen = "OnBoard screen";
  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return  OnBoardingScreen();
  }
}
