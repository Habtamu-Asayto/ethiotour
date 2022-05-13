import 'package:ethiotour/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class AddPlace extends StatelessWidget {
  const AddPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Add work Place"),
      leading: MenuWidget(),
    ),
  );
}