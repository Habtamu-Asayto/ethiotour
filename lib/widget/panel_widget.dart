
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
        SizedBox(height: 24),
        Center(
          child: Text(
            "Visit Ethiopia",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
          ), 
          
        ), 
        SizedBox(height: 12),
        Center(
          child: Row(
            children: [
              panelCard(),
            ],
          )
          
        ), 
     ],
    ),
  );

  Widget panelCard() => Container(
    child: Column(
      children: [
        Text("Images",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
      ],
    ),
    
    
  );
   
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
}