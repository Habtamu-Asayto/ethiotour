  import 'package:ethiotour/widget/panel_widget.dart';
import 'package:ethiotour/widgets/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class AllPage extends StatefulWidget {
  AllPage({Key? key}) : super(key: key);

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
   
  final panelController = PanelController();  
  static const double fabButtonHeightClosed = 116.0;
  double fabButtonHeight = fabButtonHeightClosed;

  @override
  Widget build(BuildContext context){
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.8;
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.1;
    return Scaffold( 
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: MenuWidget(),
          actions: [
            IconButton(
              onPressed: (){
                showSearch(
                  context: context, 
                  delegate: CustomSearchDelegate(),
                );
              }, 
              icon: Icon(Icons.search),
            )
          ],
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
              //body: MapsWidget(),
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
 
 class CustomSearchDelegate extends SearchDelegate{
   List<String> searchTerms = [
     'One',
      
   ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: (){
          query = '';
        }, 
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: (){
        close(context, null);
      }, 
      icon: Icon(Icons.arrow_back)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for(var value in searchTerms){
      if(value.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(value);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      }
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for(var value in searchTerms){
      if(value.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(value);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      }
    );
  }

 }