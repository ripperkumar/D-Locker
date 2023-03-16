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
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(0))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 23,
                          ),
                          Text(
                            'D-LOCKER',
                            style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 40,),
                        Text(
                          'Keep Your Data Safe and Secure',
                          style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Never worry about losing important',
                          maxLines: 4,
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'documents again with our data vault feature',
                          maxLines: 4,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(0))),
                      child: Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(currentUser!.photoURL!),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 10,
            child: Container(
              height: 330,
              width: 330,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  'assets/on-boarding-image-3.jpg',
                ),
              ),
            ),
          ),
          Positioned(
            height: 150,
            width: 150,
            bottom: 280,
            left: 30,
            child: Material(
              color: Colors.transparent,
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.yellow[900],
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
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                child: Text(
                  "   lets go    ",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, ZDrawer.idScreen);
                },
              ),
            ),
          ),
          Positioned(
            bottom: 28,
            right: 7,
            child: Container(
              width: 138,
              height: 71,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Positioned(
            height: 50,
            bottom: 46,
            right: 5,
            child: Material(
              elevation: 15,
              color: Colors.transparent,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                child: Text(
                  "    Next ->    ",
                  style: TextStyle(color: Colors.black, fontSize: 20),
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
