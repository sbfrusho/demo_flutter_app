import 'package:demo_application/presentations/views/home_screen.dart';
import 'package:demo_application/presentations/views/login_screen.dart';
import 'package:demo_application/presentations/views/sign_up_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => LoginScreen(),),
      GoRoute(path: '/signup', builder: (context, state) => SignUpScreen(),),
      GoRoute(path: '/homoe', builder: (context, state) => HomeScreen(),)
  ]);
}