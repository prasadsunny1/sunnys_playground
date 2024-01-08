import 'package:go_router/go_router.dart';
import 'package:sunnys_playground/home_screen.dart';

// GoRouter configuration
var router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);