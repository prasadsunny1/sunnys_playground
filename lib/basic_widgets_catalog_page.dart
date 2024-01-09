import 'package:flutter/material.dart';

class BasicWidegtCatalogPage extends StatelessWidget {
  const BasicWidegtCatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Widgets'),
      ),
      body: ListView(
        children: [
          WidgetShowcase(
            child: AppBar(
              title: const Text("This is an AppBar title"),
            ),
          ),
          WidgetShowcase(
            child: AppBar(
              title: Text("This is an AppBar"),
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetShowcase extends StatelessWidget {
  const WidgetShowcase({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "AppBar",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        GridPaper(
          child: Container(
            color: Colors.grey.shade400,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  child,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
