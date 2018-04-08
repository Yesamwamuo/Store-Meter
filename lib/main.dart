import 'package:flutter/material.dart';
import 'package:store_meter/CreateEditProduct.dart';
import 'package:store_meter/Home.dart';
import 'package:store_meter/Settings.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _MyAppState() {}

  void onSubmit() {
    Navigator.of(context).pop();
  }

  MaterialColor _appTheme = Colors.deepPurple;

  void createNewProduct(bool created) {
    setState(() {
      if (created == true) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Store Meter",
        theme: new ThemeData(
          primarySwatch: _appTheme,
        ),
        routes: <String, WidgetBuilder>{
          '/Home': (BuildContext context) => new Home(),
          '/CreateEditProduct': (BuildContext context) =>
              new CreateEditProduct(onSubmit: onSubmit),
        },
        home: new Home());
  }
}
