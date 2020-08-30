import 'package:flutter/material.dart';
import 'package:sunnys_playground/WhatsappClone.dart';
import 'package:sunnys_playground/blur_hash_page.dart';
import 'package:sunnys_playground/buttons/buttons_page.dart';
import 'package:sunnys_playground/home/home_menu_tile.dart';
import 'package:sunnys_playground/text_fields/text_fields_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playground"),
      ),
      body: ListView(
        children: <Widget>[
          HomeMenuTile(
            title: 'Whatsapp clone',
            subtitle: 'UI',
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) {
                    return new WhatsappClone();
                  },
                ),
              );
            },
          ),
          HomeMenuTile(
            title: 'BlurHash',
            subtitle: 'UI',
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) {
                    return new BlurHashPage();
                  },
                ),
              );
            },
          ),
          HomeMenuTile(
            title: 'Buttons',
            subtitle: 'UI',
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ButtonsPage();
                  },
                ),
              );
            },
          ),
          HomeMenuTile(
            title: 'Textfield',
            subtitle: 'UI',
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) {
                    return TextFieldsPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
