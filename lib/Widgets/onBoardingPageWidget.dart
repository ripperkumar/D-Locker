import 'package:d_locker/Screens/Signup_page.dart';
import 'package:d_locker/Modals/onBoardingModel.dart';
import 'package:flutter/material.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,required this.SingIn_widget
  }) : super(key: key);

  final OnBoardingModel model;
  final SingIn_widget;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding:  EdgeInsets.all(30.0),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.35,
          ),
          Column(
            children: [
              Text(
                model.title,
                textAlign: TextAlign.center,
                style:TextStyle(fontSize: 28),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(
            height: 80.0,
          ),
          Container(
            child:SingIn_widget?
               Container(child: ElevatedButton(
                 onPressed: (){
                   Navigator.pushNamedAndRemoveUntil(
                       context, SignUp_page.idScreen, (route) => false);
                 },
                 child: Text('SIgn-Up ->'),
               ),)
                :Container() ,
          ),
        ],
      ),
    );
  }
}