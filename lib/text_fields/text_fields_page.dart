import 'package:flutter/material.dart';

class TextFieldsPage extends StatelessWidget {
  final TextEditingController _editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Fields'),
      ),
      body: Column(
        children: [
          TextField(
            autocorrect: true,
            autofillHints: [
              "Autofill hint1",
              "Autofill hint1",
              "Autofill hint1",
              "Autofill hint1",
            ],
            autofocus: true,
            buildCounter: (context, {currentLength, isFocused, maxLength}) =>
                Text('$currentLength'),
            controller: _editingController,
            cursorRadius: Radius.circular(8),
            cursorWidth: 4,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(left: 24),
              filled: true,
              fillColor: Colors.black12,
              focusColor: Colors.lightBlue,
              suffixText: 'suffix text',
              suffixIcon: Icon(Icons.ac_unit),

            ),
          )
        ],
      ),
    );
  }
}
