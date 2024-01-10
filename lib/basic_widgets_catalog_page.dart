import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BasicWidgetCatalogPage extends StatefulWidget {
  const BasicWidgetCatalogPage({super.key});

  @override
  State<BasicWidgetCatalogPage> createState() => _BasicWidgetCatalogPageState();
}

class _BasicWidgetCatalogPageState extends State<BasicWidgetCatalogPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Widgets'),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.red,
            statusBarIconBrightness: Brightness.light,
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text("Item 1"),
                ),
                const PopupMenuItem(
                  child: Text("Item 2"),
                ),
                const PopupMenuItem(
                  child: Text("Item 3"),
                ),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                WidgetShowcase(
                  title: "AppBar",
                  child: AppBar(
                    title: const Text("This is an AppBar title"),
                    leading: const Icon(Icons.insert_emoticon),
                    // leadingWidth: 56,
                    centerTitle: true,
                    actions: [
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            WidgetShowcase(
              title: "Container",
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  gradient: const RadialGradient(
                      colors: [Colors.orange, Colors.yellow],
                      focal: Alignment.bottomCenter),
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 3,
                      color: Colors.red,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside),
                  // borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5,
                      offset: Offset(2, 2),
                      blurStyle: BlurStyle.outer,
                    )
                  ],
                ),
              ),
            ),
            const Center(
              child: Text("Tab 3"),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetShowcase extends StatelessWidget {
  const WidgetShowcase({
    super.key,
    required this.title,
    required this.child,
  });

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            title,
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
