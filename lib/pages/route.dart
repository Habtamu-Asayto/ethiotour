import 'package:ethiotour/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("Routes"),
        leading: MenuWidget(),
      ),
    );
}