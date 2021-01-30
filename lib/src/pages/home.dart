import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/src/providers/menu_providers.dart';

class HomePage extends StatelessWidget {
  final options = ["One", "Two", "Three", "For", "Five"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Components"),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _createItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _createItems(List<dynamic> data) {
    final List<Widget> options = [];

    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: Icon(Icons.account_circle),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {},
      );

      options.add(widgetTemp);
    });

    return options;
  }
}
