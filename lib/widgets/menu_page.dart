import 'package:ethiotour/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class MenuItems {
  static const home = MenuItem("Home", Icons.home);
  static const nearby = MenuItem("Nearby", Icons.near_me);
  static const saved = MenuItem("Saved", Icons.save);
  static const routes = MenuItem("Routes", Icons.route);
  static const setting = MenuItem("Setting", Icons.settings);
  static const workPlace = MenuItem("Add work place", Icons.place_rounded);
 

  static const all = <MenuItem> [
    home,
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
     // backgroundColor: Colors.white.withOpacity(0.9),
     backgroundColor: Colors.indigoAccent,
      body: ListView(  
        padding: EdgeInsets.symmetric(horizontal: 3),
          children: [ 
            DrawerHeader(
              child: Row( 
                children: [
                  Container(
                    child: Column(
                      children: [
                         CircleAvatar(
                          radius: 44,
                          backgroundImage: AssetImage("assets/welcome.jpg"),
                        ),
                        SizedBox(height: 12),
                        Text("Habtamu Asayto",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              
                      ],
                    ),
                  ),
                 
                  
                ],
                
              ),
              
            ),  
            Divider(thickness: 2, color:Colors.white24),
            ...MenuItems.all.map(buildMenuItem).toList(),
            
            Spacer(flex: 2)
          ],
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