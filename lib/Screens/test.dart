import 'dart:ui';

import 'package:d_locker/Screens/main_screen.dart';
import 'package:d_locker/Screens/payment_screen.dart';
import 'package:flutter/material.dart';
class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);
  static const String idScreen = "Test screen";

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int _selectedContainerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Digi Wallet',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/crypto_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40,),
            
            GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PaymentScreen()),
    );
  },
  child: Center(
    child: ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          width: 150.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(0.4),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Normal',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ),
  ),
),



SizedBox(height: 20,),
              GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainScreen()),
    );
  },
  child: Center(
    child: ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          width: 150.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(0.4),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Crypto',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ),
  ),
),

               
SizedBox(height: 20,),



            ],
          ),
        ));
  }
}
