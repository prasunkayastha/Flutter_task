import 'package:flutter_task/common/widgets/navigation_menu.dart';
import 'package:flutter_task/features/home/views/home.dart';
import 'package:flutter_task/features/login/views/login.dart';
import 'package:flutter_task/features/splashscreen/views/splashscreen.dart';

class AppRoutes {
  AppRoutes._();

  static const splashRoute = "/splash";
  static const loginRoute = "/login";
  static const homeRoute = "/home";
  static const navigationRoute = '/navigation';

  static getApplicationRoute() {
    return {
      splashRoute: (context) => const Splashscreen(),
      loginRoute: (context) => const LoginScreen(),
      homeRoute: (context) => const HomeScreen(),
      navigationRoute: (context) => const NavigationMenu(),
    };
  }
}
