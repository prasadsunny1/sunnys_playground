import 'package:go_router/go_router.dart';
import 'package:sunnys_playground/basic_widgets_catalog_page.dart';
import 'package:sunnys_playground/widget_catalog_page.dart';
import 'package:sunnys_playground/widgets_samples/animation_widgets_page.dart';

class Routes {
  static const String home = '/';
  static const String animationWidgets = 'animation_widgets';
  static const String basicWidgets = 'basic_widgets';
}

// GoRouter configuration
var router = GoRouter(
  routes: [
    GoRoute(
        path: Routes.home,
        builder: (context, state) => const WidgetCatalogPage(),
        routes: [
          GoRoute(
            path: Routes.animationWidgets,
            builder: (context, state) => const AnimationWidgetsPage(),
          ),
          GoRoute(
            path: Routes.basicWidgets,
            builder: (context, state) => const BasicWidgetCatalogPage(),
          ),
        ]),
  ],
);
