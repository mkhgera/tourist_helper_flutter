import 'package:flutter/material.dart';
import 'package:kaz_travel_appp/pages/pages.dart';
import 'package:kaz_travel_appp/main.dart';

class CustomRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/'),
          builder: (_) => LoginPageWidget(),
        );

      case SplashScreen.routeName:
        return SplashScreen.route();

      case NavBarPage.routeName:
        return NavBarPage.route();

      case LoginPageWidget.routeName:
        return LoginPageWidget.route();

      case HomePageWidget.routeName:
        return HomePageWidget.route();
      case CreateAccountPageWidget.routeName:
        return CreateAccountPageWidget.route();
      default:
        _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Something went wrong!'),
        ),
      ),
    );
  }
}
