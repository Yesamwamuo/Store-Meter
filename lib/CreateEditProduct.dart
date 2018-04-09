import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CreateEditProduct extends StatelessWidget {
  final VoidCallback onSubmit;

  const CreateEditProduct({Key key, @required this.onSubmit});

  static final TextEditingController _productName = new TextEditingController();
  static final TextEditingController _edit = new TextEditingController();
  static final TextEditingController _productDdescription =
      new TextEditingController();

  String get productName => _productName.text;

  String get productDescription => _productDdescription.text;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Create Product")),
      body: new Column(
        children: <Widget>[
          new TextField(
            controller: _productName,
            decoration: new InputDecoration(labelText: "Product Name"),
          ),
          new TextField(
            controller: _productDdescription,
            decoration: new InputDecoration(labelText: "Product Description"),
          ),
          new EditableText(
              controller: _edit,
              focusNode: new FocusNode(),
              style: Theme.of(context).textTheme.display1,
              cursorColor: Colors.deepPurple),
          new RaisedButton(
              child: new Text("Create Product"), onPressed: onSubmit)
        ],
      ),
    );
  }
}
