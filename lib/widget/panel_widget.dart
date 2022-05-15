
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidget extends StatelessWidget {
  const PanelWidget({Key? key, required this.controller, required this.panelController}) : super(key: key);
  final ScrollController controller;
  final PanelController panelController;

  @override
  Widget build(BuildContext context) => ListView(
    
    padding: EdgeInsets.zero,
    controller: controller,
    children: [
      SizedBox(height: 19),
      buildText(),
      SizedBox(height: 12),
      
    ],
  );

  Widget buildText() => Container(
    padding: EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        buildDragHandler(), 
        SizedBox(height: 12),
        Container(
          padding: EdgeInsets.only(left: 21),
          child: Text("Explore",style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),),
        ),
        SizedBox(height: 16),
        Container(
          child:Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [ 
                   buildActivityButton(Icons.place, "Places",Colors.blue.withOpacity(0.2), Color(0XFF01579B)),
                   buildActivityButton( Icons.near_me, "Nearby",Colors.cyanAccent.withOpacity(0.2),Color(0XFF0097A7)),
                   buildActivityButton(Icons.add, "Category",Color(0XFFD7CCC8).withOpacity(0.4), Color(0XFF9499B7)),
                   buildActivityButton(Icons.add, "Add",Color.fromARGB(255, 241, 113, 66).withOpacity(0.4), Color.fromARGB(169, 86, 107, 228)),
                 ],
               ),
        ) ,
     ],
    ),
  );

 /* Widget panelCard() =>  Container(
    child: Text("data"),
  );
  */

  Widget buildDragHandler() => GestureDetector(
    child: Center(
      child: Container(
        width: 30,
        height: 5,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    ),
    onTap: togglePanel,
  );
  
   void togglePanel() => panelController.isPanelOpen
    ? panelController.close() : panelController.open();

 
  GestureDetector buildActivityButton(
      IconData icon, String title, Color backgroundColor, Color iconColor) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(3),
        height: 80,
        width: 84,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
}
}