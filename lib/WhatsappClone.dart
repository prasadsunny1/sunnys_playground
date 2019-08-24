import 'package:flutter/material.dart';

class WhatsappClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(primaryColor: Colors.green),
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsappClone"),
        ),
        body: Center(child: Text("Whatsapp Clone")),
      ),
    );
  }
}
