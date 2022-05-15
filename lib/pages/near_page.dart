import 'package:ethiotour/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class NearPage extends StatelessWidget {
  const NearPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text("Nearby places"),
      leading: MenuWidget(),
    ),
  );
}