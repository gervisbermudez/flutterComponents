import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final options = ["One", "Two", "Three", "For", "Five"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Components"),
      ),
      body: ListView(
        children: _createItems(),
      ),
    );
  }

  List<Widget> _createItems() {
    var widgetList = options.map((item) {
      return ListTile(title: Text(item + "!"));
    }).toList();
    return widgetList;
  }
}
