import 'package:d_locker/Screens/addCard_screen.dart';
import 'package:d_locker/Screens/display_file_screen.dart';
import 'package:d_locker/Screens/main_screen.dart';
import 'package:d_locker/Screens/menuCard_screen.dart';
import 'package:d_locker/Screens/nav_screen.dart';
import 'package:d_locker/Screens/digiWallet.dart';
import 'package:d_locker/Screens/payment_screen.dart';
import 'package:d_locker/Screens/zDrawer.dart';
import 'package:get/get.dart';
import 'Screens/Signup_page.dart';
import 'Modals/google_signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
        ),
      ],
      child: GetMaterialApp(
        title: 'D-Locker',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: DigiWallet.idScreen,
        routes: {
          DigiWallet.idScreen: (context) => DigiWallet(),
          SignUp_page.idScreen: (context) => SignUp_page(),
          AddCardDetails.idScreen: (context) => AddCardDetails(),
          MenuCard.idScreen: (context) => MenuCard(),
          ZDrawer.idScreen: (context) => ZDrawer(),
          NavScreen.idScreen: (context) => NavScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
