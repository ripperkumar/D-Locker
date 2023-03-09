import 'package:d_locker/Modals/drawer_item_modal.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MenuItem{
  static  final payment=  DrawerMenuItem(title: 'Payment',icon: Icons.payment);
  static  final promo=  DrawerMenuItem(title: 'promo',icon: Icons.card_giftcard);
  static  final notification=  DrawerMenuItem(title: 'notification',icon: Icons.doorbell_outlined);
  static  final help=  DrawerMenuItem(title: 'help',icon: Icons.help);
  static  final aboutUs=  DrawerMenuItem(title: 'aboutUs',icon: Icons.question_mark_rounded);
  static  final rateUs=  DrawerMenuItem(title: 'rateUs',icon: Icons.rate_review);
  static final all =<DrawerMenuItem>[payment,promo,notification,help,aboutUs,rateUs];
}




class MenuPage extends StatelessWidget {
   MenuPage({Key? key, required this.currentItem, required this.onSelectedItem}) : super(key: key);
final DrawerMenuItem currentItem;
  final currentUser = FirebaseAuth.instance.currentUser;
final ValueChanged<DrawerMenuItem> onSelectedItem;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 150,
                child: DrawerHeader(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(currentUser!.photoURL!),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            currentUser!.displayName!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "PretendardBold",
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      )
                  ),
                ),
              ),

              ...MenuItem.all.map(buildMenuItem).toList(),
              Spacer(flex: 2,),

            ],
          ),
        ),
      ),
    );

  }


  Widget buildMenuItem(DrawerMenuItem item) {
    return ListTileTheme(
      selectedColor: Colors.white,
      child: ListTile(
        selectedTileColor: Colors.black26,
        selected: currentItem ==item,
        minLeadingWidth: 20,
          leading: Icon(item.icon),
        title: Text(item.title),
        onTap: (){
onSelectedItem(item);
        },
      ),
    );
  }
}
