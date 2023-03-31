import 'dart:ui';

import 'package:d_locker/Screens/main_screen.dart';
import 'package:d_locker/Screens/payment_screen.dart';
import 'package:flutter/material.dart';

class DigiWallet extends StatefulWidget {
  const DigiWallet({Key? key}) : super(key: key);
  static const String idScreen = "DigiWallet screen";

  @override
  State<DigiWallet> createState() => _DigiWalletState();
}

class _DigiWalletState extends State<DigiWallet> {
  int _selectedContainerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 0, 4, 30), // Dark blue background
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            Positioned(
              top: 80,
              left: -60,
              child: Image.asset(
                'assets/circles.png',
                width: 400,
                height: 400,
              ),
            ),
            Positioned(
              top: 22,
              left: 2,
              child: IconButton(
                iconSize: 40,
                color: Colors.white,
                icon: Icon(Icons.arrow_back_ios_sharp),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                },
              ),
            ),
            Positioned(
              top: 200,
              left: -50,
              child: Column(
                children: [
                  Text(
                    'Digi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Text(
                    '    Wallet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 500,
              left: 100,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentScreen()),
                  );
                },
                child: Container(
                  width: 200,
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 255, 5, 5),
                        Color.fromARGB(255, 34, 0, 255)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      '1 Click Pay',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 610,
              left: 100,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentScreen()),
                  );
                },
                child: Container(
                  width: 200,
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 34, 0, 255),
                        Color.fromARGB(255, 255, 43, 43)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Crypto Pay',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
