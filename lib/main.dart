import 'package:d_locker/Screens/onBoard.dart';
import 'package:d_locker/Screens/onBoarding_screen.dart';

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
      child: MaterialApp(
        title: 'BookHero',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: SignUp_page.idScreen,
        routes: {
          SignUp_page.idScreen: (context) => SignUp_page(),
          OnBoard.idScreen: (context) => OnBoard(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
