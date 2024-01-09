import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sunnys_playground/router.dart';

class WidgetCatalogPage extends StatelessWidget {
  const WidgetCatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Catalog'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Basic Widgets'),
            onTap: () {
              GoRouter.of(context).go(Routes.home + Routes.basicWidgets);
            },
          ),
          ListTile(
            title: const Text('Animation Widgets'),
            onTap: () {
              GoRouter.of(context).go(Routes.home + Routes.animationWidgets);
            },
          ),
          ListTile(
            title: const Text('Widget Catalog'),
            onTap: () {
              GoRouter.of(context).go(Routes.home);
            },
          ),
        ],
      ),
    );
  }
}
