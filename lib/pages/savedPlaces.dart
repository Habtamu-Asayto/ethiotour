import 'package:ethiotour/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class Saved extends StatelessWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("Saved places"),
        leading: MenuWidget(),
      ),
    );
}