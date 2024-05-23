import 'package:go_router/go_router.dart';
import 'package:save_me/views/Auth/login_screen.dart';
import 'package:save_me/views/Auth/register_2_screen.dart';
import 'package:save_me/views/Auth/register_screen.dart';
import 'package:save_me/views/HomePage/homepage_screen.dart';
import 'package:save_me/views/splash_screen.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'splash-screen',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/auth/login',
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/auth/register',
      name: 'register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/auth/register_2',
      name: 'register_2',
      builder: (context, state) => const Register2Screen(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);