import 'package:ethiotour/home/home_page.dart';
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
                   GestureDetector(
             
                     child: Container(child: buildActivityButton(Icons.place, "Places",Colors.blue.withOpacity(0.2), Color(0XFF01579B)))),
                   buildActivityButton( Icons.near_me, "Nearby",Colors.cyanAccent.withOpacity(0.2),Color(0XFF0097A7)),
                   buildActivityButton(Icons.category, "Category",Color(0XFFD7CCC8).withOpacity(0.4), Color(0XFF9499B7)),
                   buildActivityButton(Icons.add, "Add",Color.fromARGB(255, 241, 113, 66).withOpacity(0.4), Color.fromARGB(169, 86, 107, 228)),
                 ],
               ),
        ) , 
      SizedBox(height: 16),
      Container(
         height: 100,
         width: 500,
         child: Row(
             children: [
               Column(
                  children: [
                    SizedBox(height: 12),
                    Text("Awesome place", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
                    SizedBox(height: 6), 
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(" I have a simple container with a Margin \n information left of 20.0 Inside ."),
                    )
                  ],
                ),

                Container(
                  child: Icon(Icons.auto_awesome),
                ),
             ],
             
          ),
          decoration: BoxDecoration(
            boxShadow: [
               BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
            ],
            color: Colors.white60, borderRadius: BorderRadius.circular(10.0)),
      ),
 
      SizedBox(height: 16),

      Container(
         height: 100,
         width: 500,
          decoration: BoxDecoration(
            color: Colors.tealAccent, borderRadius: BorderRadius.circular(10.0)),
      ),

      SizedBox(height: 16),
      Container(
         height: 100,
         width: 500,
          decoration: BoxDecoration(
            color: Colors.limeAccent, borderRadius: BorderRadius.circular(10.0)),
      ),


      SizedBox(height: 16),
      Container(
        child: Text("A computer is a machine that can store and process information. Most computers rely on a binary system, which uses two variables, 0 and 1, to complete tasks such as storing data, calculating algorithms, and displaying information.A computer is a machine that can store and process information. Most computers rely on a binary system, which uses two variables, 0 and 1, to complete tasks such as storing data, calculating algorithms, and displaying information.A computer is a machine that can store and process information. Most computers rely on a binary system, which uses two variables, 0 and 1, to complete tasks such as storing data, calculating algorithms, and displaying information."),
      ), 
      SizedBox(height: 16),
      Container(
        child: Text("A computer is a machine that can store and process information. Most computers rely on a binary system, which uses two variables, 0 and 1, to complete tasks such as storing data, calculating algorithms, and displaying information.A computer is a machine that can store and process information. Most computers rely on a binary system, which uses two variables, 0 and 1, to complete tasks such as storing data, calculating algorithms, and displaying information.A computer is a machine that can store and process information. Most computers rely on a binary system, which uses two variables, 0 and 1, to complete tasks such as storing data, calculating algorithms, and displaying information."),
      ), 
      SizedBox(height: 16),
      Container(
        child: Text("A computer is a machine that can store and process information. Most computers rely on a binary system, which uses two variables, 0 and 1, to complete tasks such as storing data, calculating algorithms, and displaying information.A computer is a machine that can store and process information. Most computers rely on a binary system, which uses two variables, 0 and 1, to complete tasks such as storing data, calculating algorithms, and displaying information.A computer is a machine that can store and process information. Most computers rely on a binary system, which uses two variables, 0 and 1, to complete tasks such as storing data, calculating algorithms, and displaying information."),
      ),
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

 
   Widget buildActivityButton(
      IconData icon, String title, Color backgroundColor, Color iconColor) => Container(
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
      );

 void gotoNext(context) => Navigator.of(context).pushReplacement(
        //MaterialPageRoute(builder: (_) => const HomePage()),
        MaterialPageRoute(builder: (_) => HomePage()),
      );

}