import 'package:ethiotour/pages/addPlace.dart';
import 'package:ethiotour/pages/allPage.dart';
import 'package:ethiotour/pages/setting.dart';
import 'package:ethiotour/widgets/menu_item.dart';
import 'package:ethiotour/widgets/menu_page.dart';
import 'package:ethiotour/pages/nearby.dart';
import 'package:ethiotour/pages/route.dart';
import 'package:ethiotour/pages/savedPlaces.dart'; 
import 'package:flutter/material.dart'; 
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class RealHome extends StatefulWidget {
  RealHome({Key? key}) : super(key: key);

  @override
  State<RealHome> createState() => _RealHomeState();
}

class _RealHomeState extends State<RealHome> {
  MenuItem currentItem = MenuItems.home;
  @override
  Widget build(BuildContext context) => ZoomDrawer(
    style: DrawerStyle.Style1,
    borderRadius: 27,
    angle: -3,
    slideWidth: MediaQuery.of(context).size.width * 0.6,
    backgroundColor: Colors.blueAccent,
    showShadow: true,
    menuScreen: Builder(
      builder: (context)=> MenuPage(
        currentItem: currentItem,
        onSelectedItem: (item){
          setState(() => currentItem = item);
          ZoomDrawer.of(context)!.close();
        },
      ),
    ), 
    mainScreen: getScreen()
    );

  Widget getScreen() {
    switch(currentItem) {
      case MenuItems.home:
        return AllPage();
      case MenuItems.home:
        return AddPlace();
      case MenuItems.nearby:
        return NearBy();
      case MenuItems.saved:
        return Saved();
      case MenuItems.routes:
        return Routes();
      case MenuItems.setting:
        return Settings();
      case MenuItems.workPlace:
      default:
        return AddPlace();
    }
  }
    
}