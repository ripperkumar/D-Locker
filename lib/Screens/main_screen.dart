import 'dart:ui';

import 'package:d_locker/Screens/menuCard_screen.dart';
import 'package:d_locker/Screens/zDrawer.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainScreenCard extends StatefulWidget {
  MainScreenCard({Key? key}) : super(key: key);
  static const String idScreen = "main screen card screen";

  @override
  State<MainScreenCard> createState() => _MainScreenCardState();
}

class _MainScreenCardState extends State<MainScreenCard> {
  final currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    int index = 0;
    final items = <Widget>[
      Icon(
        Icons.home,
        size: 30,
      ),
      Icon(
        Icons.person,
        size: 30,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Stack(
        children: [
          Positioned(
            top: 250,
            left: 0,
            bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/bg_img2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bg-image-top.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                children: [
                  const Positioned(
                    top: 70.0,
                    right: 150.0,
                    child: Text(
                      'D-LOCKER',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          'Keep Your Data Safe and Secure',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Never worry about losing important',
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'documents again with our data vault feature',
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 150,
                      width: 110,
                      child: Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(currentUser!.photoURL!),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 10,
            child: Container(
              height: 360,
              width: 360,
              child: Card(
                color: Color.fromARGB(0, 255, 255, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  child: Image.asset(
                    'assets/image_.png',
                  ),
                  height: 322,
                  width: 325,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 97, 24, 255),
                        Color.fromARGB(0, 255, 255, 255),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            height: 110,
            width: 110,
            bottom: 320,
            left: 30,
            child: Material(
              color: Color.fromRGBO(0, 0, 0, 0),
              borderRadius: BorderRadius.circular(15),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Color.fromARGB(255, 0, 0, 0),
                child: Icon(
                  Icons.file_copy_sharp,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          ),
          Positioned(
            height: 50,
            bottom: 50,
            left: 30,
            child: Material(
              elevation: 10,
              color: Colors.transparent,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 98, 24, 255)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                child: Text(
                  "   Let's Go    ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, ZDrawer.idScreen);
                },
              ),
            ),
          ),
          Positioned(
            height: 50,
            bottom: 46,
            right: 15,
            child: Material(
              elevation: 15,
              color: Colors.transparent,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 98, 24, 255)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                child: Text(
                  "    Next ->    ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 300),
            color: Colors.deepPurpleAccent,
            backgroundColor: Colors.transparent,
            height: 60,
            items: items,
            index: index,
            onTap: (i) => setState(() => index = i)),
      ),
    );
  }
}
