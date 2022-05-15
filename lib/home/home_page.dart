import 'package:ethiotour/widget/maps_widget.dart';
import 'package:ethiotour/widget/panel_widget.dart';
import 'package:ethiotour/widgets/menu_widget.dart';
import 'package:flutter/material.dart'; 
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
  final panelController = PanelController();

  static const double fabButtonHeightClosed = 116.0;
  double fabButtonHeight = fabButtonHeightClosed;

  
  @override
  Widget build(BuildContext context) {
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.8;
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
       appBar: AppBar(
         title: Text("All Places"),
         leading: MenuWidget(),
       ),
       body: Stack(
         alignment: Alignment.topCenter,
         children: [
            SlidingUpPanel (
              controller: panelController,
              minHeight: panelHeightClosed,
              maxHeight: panelHeightOpen,
              parallaxEnabled: true,
              parallaxOffset: .5,
              body: MapsWidget(),
              panelBuilder: (controller) => PanelWidget(
                controller: controller,
                panelController: panelController,
                ),
                borderRadius: BorderRadius.vertical(top: Radius.circular(19)),
                onPanelSlide: (position) => setState(() {
                 final panelMaxScroll = panelHeightOpen - panelHeightClosed;
                 
                 fabButtonHeight = position * panelMaxScroll + fabButtonHeightClosed; 
                }),
              ),
            Positioned(
              right: 20,
              bottom: fabButtonHeight,
              child: buildBottomButton(context)
            ),
         ],
       ),
               
    );
  }

  Widget buildBottomButton(BuildContext context) => FloatingActionButton(
    backgroundColor: Colors.white,
    child: Icon(
      Icons.gps_fixed,
      color: Theme.of(context).primaryColor,
    ),
    onPressed: (){}
  );
 
}