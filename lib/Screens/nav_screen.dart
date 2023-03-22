import "package:d_locker/Screens/storage_screen.dart";
import "package:d_locker/Widgets/header.dart";
import "package:flutter/material.dart";

class NavScreen extends StatelessWidget {
  static String idScreen = "NavScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(25),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
      ),
      body: Column(
        children: [
          Header(),
          StorageScreen(),
        ],
      ),
    );
  }
}
