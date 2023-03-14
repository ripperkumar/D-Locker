import 'package:d_locker/Modals/drawer_item_modal.dart';
import 'package:d_locker/Screens/Signup_page.dart';
import 'package:d_locker/Screens/addCard_screen.dart';
import 'package:d_locker/Screens/drawerMenuPage.dart';
import 'package:d_locker/Screens/menuCard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class ZDrawer extends StatefulWidget {
  const ZDrawer({Key? key}) : super(key: key);
  static const String idScreen = "ZDrawer screen";
  @override
  State<ZDrawer> createState() => _ZDrawerState();
}

class _ZDrawerState extends State<ZDrawer> {
  DrawerMenuItem currentItem = MenuItem.payment;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.Style1,
      borderRadius: 40,
      angle: -10,
      slideWidth: MediaQuery.of(context).size.width*0.6,
      showShadow: true,
      backgroundColor: Colors.white60,
      mainScreen: getScreen(),
      menuScreen: Builder(
        builder: (context) {
          return MenuPage(
            currentItem:currentItem,
            onSelectedItem:(item){
            setState(() {
              currentItem = item;
            });
            ZoomDrawer.of(context)!.close();
            }
          );
        }
      ),
    );

  }

  getScreen() {
    if(currentItem==MenuItem.payment)
      {
   return MenuCard();
      }
    else{
      return AddCardDetails();
    }
  }


}


