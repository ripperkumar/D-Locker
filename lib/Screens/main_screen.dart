import 'package:d_locker/Screens/zDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  static const String idScreen = "SignUp screen";

  @override
  Widget build(BuildContext context)
  {
    final pages = [
      Container(
        padding: EdgeInsets.all(30.0),
        color: Colors.blueAccent,
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
                  style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Never worry about losing important documents again with our data vault feature',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white70),
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
                  padding: EdgeInsets.all(20),
                  onPrimary: Colors.white),
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(color: Colors.greenAccent),
                child: Text("Get started",style: TextStyle(color: Colors.black),),
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(30.0),
        color: Colors.greenAccent,
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
                  'Pass on Your Legacy with Ease',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Transfer your digital legacy to your loved ones seamlessly with our data legacy transfer feature.',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white70),
                ),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.deepOrangeAccent),
                  padding: EdgeInsets.all(20),
                  onPrimary: Colors.white),
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(color: Colors.orangeAccent),
                child: Text("Get started"),
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(30.0),
        color: Colors.orangeAccent,
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
                  'Convenient and Secure Payments',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Make payments on-the-go with our digital wallet feature, without compromising on security.',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white70),
                ),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.lightBlueAccent),
                  padding: EdgeInsets.all(20),
                  onPrimary: Colors.white),
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Text("Get started"),
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
          size: 20,
        ),
        positionSlideIcon: 0.5,
        waveType: WaveType.circularReveal,
      ),
    );
  }


}
