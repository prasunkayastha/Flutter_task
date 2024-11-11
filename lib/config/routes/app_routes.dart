import 'package:flutter_task/screens/login.dart';
import 'package:flutter_task/screens/splashscreen.dart';

class AppRoutes {
  AppRoutes._();

  static const splashRoute = "/splash";
  static const loginRoute = "/login";

  static getApplicationRoute() {
    return {
      splashRoute: (context) => const Splashscreen(),
      loginRoute: (context) => const LoginScreen(),
    };
  }
}
