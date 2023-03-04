import 'package:finance_app/core/exceptions/route_exception.dart';
import 'package:finance_app/presentation/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String loginScreen = 'login screen';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );

      default:
        throw const RouteException('Route not found!');
    }
  }
}
