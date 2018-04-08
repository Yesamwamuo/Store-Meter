import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Store Meter")),
        body: new Center(
          child: new Text("Click the add button to add items to your list"),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: (){Navigator.of(context).pushNamed("/CreateEditProduct");},
          tooltip: 'Add Product',
          child: new Icon(Icons.add),
        ));
  }
}
