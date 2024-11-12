import 'package:flutter_task/features/login/views/login.dart';
import 'package:flutter_task/features/splashscreen/views/splashscreen.dart';

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
