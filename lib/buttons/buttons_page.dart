import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons'),),
      body: Column(children: [
        OutlineButton(child: Text('Outline Button'), onPressed: (){},),
        RaisedButton(child: Text('Raised Button'), onPressed: (){},),
        FlatButton(child: Text('Flat Button'), onPressed: (){},),
      ],),
    );
  }
}
