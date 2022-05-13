import 'package:ethiotour/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class MenuItems {
  static const allPlace = MenuItem("Allplace", Icons.place);
  static const nearby = MenuItem("Nearby", Icons.near_me);
  static const saved = MenuItem("Saved", Icons.save);
  static const routes = MenuItem("Routes", Icons.route);
  static const setting = MenuItem("Setting", Icons.settings);
  static const workPlace = MenuItem("Add work place", Icons.place_rounded);
 

  static const all = <MenuItem> [
    allPlace,
    nearby,
    saved,
    routes,
    setting,
    workPlace,
    nearby,
    saved, 
    routes,
    setting,
  ];
}
class MenuPage extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  const MenuPage({Key? key, required this.currentItem, required this.onSelectedItem}) : super(key: key);
 
  @override
  Widget build(BuildContext context)=>Theme(
    data: ThemeData.dark(),
    child: Scaffold(
      
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 7),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  child: Icon(
                    Icons.account_box
                  ),
                  
                ),
              
              ),
            ),
            Spacer(),
            ...MenuItems.all.map(buildMenuItem).toList(),
            Spacer(flex: 2)
          ],
        )
      ),
    ),
  );
  Widget buildMenuItem(MenuItem item) => ListTileTheme(
    selectedColor: Colors.white,
    child: ListTile(
      selectedTileColor: Colors.black26,
      selected: currentItem==item,
      minLeadingWidth: 20,
      leading: Icon(item.icon),
      title: Text(item.title),
      onTap: ()=> onSelectedItem(item),
    ),
  );
}