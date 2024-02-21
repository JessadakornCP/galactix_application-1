import 'package:flutter/cupertino.dart';
import 'package:galactix_application/app/home/view/home_screen.dart';
import 'package:galactix_application/core/widgets/widgets.dart';
import 'navigation_constants.dart';

class NavigationRoute {
  NavigationRoute._init();
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  Route<dynamic>? generateRoute(RouteSettings settings) {
    if (settings.name == null) return null;
    final uri = Uri.parse(settings.name!);
    switch (uri.path) {
      case AppNavConstants.DEFALT:
        return normalNavigate(
          const HomeScreen(),
          AppNavConstants.DEFALT,
          settings.arguments,
        );
      default:
        return CupertinoPageRoute(
          builder: (context) => const NotFoundNavigationWidget(),
        );
    }
  }

  CupertinoPageRoute normalNavigate(
      Widget widget, String pageName, Object? arguments) {
    return CupertinoPageRoute(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName, arguments: arguments),
    );
  }
}
