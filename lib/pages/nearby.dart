  import 'package:ethiotour/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class NearBy extends StatelessWidget {
    const NearBy({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("Nearby Places"),
        leading: MenuWidget(),
        
      ),
    );
  }