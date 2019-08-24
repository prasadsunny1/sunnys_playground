import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:sunnys_playground/WhatsappClone.dart';
import 'package:url_launcher/url_launcher.dart';

final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

void main() {
  // Pass all uncaught errors from the framework to Crashlytics.
  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  runApp(MyApp());

  _firebaseMessaging.requestNotificationPermissions();
}

FirebaseAnalytics analytics = FirebaseAnalytics();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
      title: 'Playground',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playground"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Whatsapp clone"),
            subtitle: Text("UI"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) {
                    return new WhatsappClone();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
