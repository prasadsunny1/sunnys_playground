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
                WidgetShowcase(
                  title: "Button",
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 20),
                      alignment: Alignment.bottomCenter,
                      enabledMouseCursor: SystemMouseCursors.allScroll,
                      enableFeedback: true,
                      side: const BorderSide(),
                    ),
                    onPressed: () {},
                    child: const Text('Enabled'),
                  ),
                ),
                WidgetShowcase(
                  title: "FilledButton",
                  child: FilledButton(
                    onPressed: () {},
                    child: const Text('Enabled'),
                  ),
                ),
                WidgetShowcase(
                  title: "FilledButton.tonal",
                  child: FilledButton.tonal(
                    onPressed: () {},
                    child: const Text('Enabled'),
                  ),
                ),
                WidgetShowcase(
                  title: "OutlinedButton",
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Enabled'),
                  ),
                ),
                WidgetShowcase(
                  title: "TextButton",
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Enabled'),
                  ),
                ),
                WidgetShowcase(
                  title: "Icon button",
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      ),
                      IconButton.filled(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      ),
                      IconButton.filledTonal(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                WidgetShowcase(
                  title: "FAB",
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FloatingActionButton(
                        child: Icon(Icons.chevron_left),
                        onPressed: () {},
                      ),
                      SizedBox(width: 8),
                      FloatingActionButton.large(
                        child: Icon(Icons.play_arrow),
                        onPressed: () {},
                      ),
                      SizedBox(width: 8),
                      FloatingActionButton.small(
                        child: Icon(Icons.chevron_right),
                        onPressed: () {},
                      ),
                      FloatingActionButton.extended(
                        onPressed: () {},
                        label: Text("abc"),
                        icon: Icon(Icons.add),
                      )
                    ],
                  ),
                ),
                WidgetShowcase(
                  title: "PlaceHolder",
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Placeholder(
                      child: Text("child widget"),
                      color: Colors.blue,
                      strokeWidth: 4,
                      fallbackHeight: 50,
                      fallbackWidth: 50,
                    ),
                  ),
                ),
                WidgetShowcase(
                  title: "Image",
                  child: Image.network(
                    "https://fastly.picsum.photos/id/481/200/300.jpg?hmac=mlbIyGYg8TMyId9tAwMZz1VppVzNObkpL0cVVxnjTVo",
                    height: 150,
                    width: 100,
                    cacheHeight: 150,
                    cacheWidth: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                WidgetShowcase(
                  title: "FlutterLogo",
                  child: FlutterLogo(
                    style: FlutterLogoStyle.horizontal,
                    curve: Curves.bounceIn,
                    size: 100,
                    textColor: Colors.blue,
                  ),
                ),
                WidgetShowcase(
                  // Sizedbox's size will not go beyond the parent size..
                  // even if you specify explicitly
                  title: "SizedBox",
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: SizedBox(
                      width: 200,
                      height: 100,
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
                WidgetShowcase(
                  title: "FractionallySizedBox 0.5w 1.5h",
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                    child: FractionallySizedBox(
                      heightFactor: 1.5,
                      widthFactor: 0.5,
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
                WidgetShowcase(
                  title: "Aspect 16/9",
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                    ),
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
