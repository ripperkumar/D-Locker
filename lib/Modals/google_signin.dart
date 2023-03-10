
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;
  Future googleLogin(context) async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              Text('Signning In',style: TextStyle(color: Colors.white),)
            ],
          ),
        );
      },
    );

    await FirebaseAuth.instance.signInWithCredential(credential);
    Navigator.of(context).pop();
    notifyListeners();

  }

  Future logout(context) async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              Text('Logging Out',style: TextStyle(color: Colors.white),)
            ],
          ),
        );
      },
    );
    _user = null;
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
    notifyListeners();
    Navigator.of(context).pop();
  }

  Future<void> deleteAccount(context) async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      await FirebaseAuth.instance.currentUser!.delete();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'requires-recent-login') {
        print(
            'The user must reauthenticate before this operation can be executed.');
      }
    }
    await FirebaseAuth.instance.signOut();
    _user = null;
    notifyListeners();
    Navigator.of(context).pop();
  }
}