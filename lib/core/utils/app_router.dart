import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/';

  static final router = GoRouter(initialLocation: kHomeView, routes: [
    // GoRoute(
    //   path: kFistRegisterScreen,
    //   builder: (context, state) => const FirstRegisterScreen(),
    // ),
  ]);
}
