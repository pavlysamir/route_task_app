import 'package:go_router/go_router.dart';
import 'package:route_task/features/home/presentation/views/home_screen.dart';

abstract class AppRouter {
  static const kHomeView = '/';

  static final router = GoRouter(initialLocation: kHomeView, routes: [
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeScreen(),
    ),
  ]);
}
