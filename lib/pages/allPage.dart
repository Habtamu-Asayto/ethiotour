  import 'package:ethiotour/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class AllPlace extends StatelessWidget {
    const AllPlace({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("All Places"),
        leading: MenuWidget(),
      ),
    );
  }