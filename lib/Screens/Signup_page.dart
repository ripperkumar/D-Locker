import 'package:d_locker/Modals/google_signin.dart';
import 'package:d_locker/Screens/onBoarding_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUp_page extends StatefulWidget {
  const SignUp_page({Key? key}) : super(key: key);
  static const String idScreen = "SignUp screen";
  @override
  _SignUp_pageState createState() => _SignUp_pageState();
}

class _SignUp_pageState extends State<SignUp_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            return Center(child: Container(child: Text('hehehhehehe'),));
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Something Went Wrong!"),
            );
          } else {
            return SignUpWidget();
          }
        },
      ),
    );
  }
}





class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow[400],
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 400,
                  ),
                ),
                SizedBox(height: 40),
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        "sample",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PretendardBold'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "AppStrings.appTitle",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PretendardBold'),
                      ),
                      SizedBox(height: 20.0),
                      SizedBox(
                        height: 56.0,
                        width: 310.0,
                        child: Text(
                          'AppStrings.appTitleSub',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Pretendard'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        height: 50.0,
                        width: 300.0,
                        child: OutlinedButton(
                          onPressed: () {
                            final provider = Provider.of<GoogleSignInProvider>(
                                context,
                                listen: false);
                            provider.googleLogin();
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Continue with Google',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              heightFactor: 8.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0E3311).withOpacity(0.0),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30.0,
                    ),
                  ],
                ),
                height: 90.0,
                width: 90.0,
                child: Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
