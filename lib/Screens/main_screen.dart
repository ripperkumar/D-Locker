import 'package:d_locker/Screens/zDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  static const String idScreen = "SignUp screen";

  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: Colors.blueAccent,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: -15,
              child: SvgPicture.asset(
                'assets/blob.svg',
                color: Colors.white,
                height: 170,
              ),
            ),
            Positioned(
              top: 50,
              left: 45,
              child: Text(
                'Data',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 122,
              child: Text(
                ' Vault',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/main1.png'),
                    height: 350,
                  ),
                  Column(
                    children: [
                      Text(
                        'Keep Your Data Safe & Secure',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Never worry about losing important documents again with our data vault feature',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white70),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ZDrawer.idScreen);
                    },
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.lightGreenAccent),
                        padding: EdgeInsets.all(15),
                        onPrimary: Colors.white),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ZDrawer.idScreen);
                      },
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.lightGreenAccent),
                          padding: EdgeInsets.all(15),
                          onPrimary: Colors.white),
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Get started",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Colors.greenAccent,
        child: Stack(
          children: [
            Positioned(
              top: -10,
              left: -8,
              child: SvgPicture.asset(
                'assets/blob.svg',
                color: Colors.white,
                height: 190,
              ),
            ),
            Positioned(
              top: 50,
              left: 45,
              child: Text(
                'Digital',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 149,
              child: Text(
                ' Wallet',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/mainscreen2.png'),
                    height: 350,
                  ),
                  Column(
                    children: [
                      Text(
                        'Convenient and Secure Payments',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Make payments on-the-go with our digital wallet feature, without compromising on security.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ZDrawer.idScreen);
                    },
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.deepOrangeAccent),
                        padding: EdgeInsets.all(15),
                        onPrimary: Colors.white),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ZDrawer.idScreen);
                      },
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.deepOrangeAccent),
                          padding: EdgeInsets.all(15),
                          onPrimary: Colors.white),
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Get started",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Colors.orangeAccent,
        child: Stack(
          children: [
            Positioned(
              top: -25,
              left: -32,
              child: SvgPicture.asset(
                'assets/blob.svg',
                color: Colors.white,
                height: 230,
              ),
            ),
            Positioned(
              top: 50,
              left: 45,
              child: Text(
                'Legacy',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 158,
              child: Text(
                ' Transfer',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/main3.png'),
                    height: 350,
                  ),
                  Column(
                    children: [
                      Text(
                        'Pass on Your Legacy with Ease',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Transfer your digital legacy to your loved ones seamlessly with our data legacy transfer feature.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ZDrawer.idScreen);
                    },
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.lightBlueAccent),
                        padding: EdgeInsets.all(15),
                        onPrimary: Colors.white),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ZDrawer.idScreen);
                      },
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.lightBlueAccent),
                          padding: EdgeInsets.all(15),
                          onPrimary: Colors.white),
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Get started",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        enableSideReveal: true,
        fullTransitionValue: 300,
        slideIconWidget: Icon(
          Icons.arrow_back_ios,
          size: 25,
        ),
        positionSlideIcon: 0.5,
        waveType: WaveType.circularReveal,
      ),
    );
  }
}
