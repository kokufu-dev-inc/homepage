import 'package:flutter/material.dart';
import 'package:flutter_test_app/pages/about_page/about_page.dart';
import 'package:flutter_test_app/pages/contact_page/contact_page.dart';
import 'package:flutter_test_app/pages/home_page/home_page.dart';
import 'package:flutter_test_app/pages/not_found_page/nor_found_page.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    HomePage.routeName: (context) => const HomePage(),
    AboutPage.routeName: (context) => const AboutPage(),
    ContactPage.routeName: (context) => const ContactPage(),
  };

  static Future push(BuildContext context, String route) async {
    return await Navigator.push(
      context,
      PageRouteBuilder(
        settings: RouteSettings(name: route),
        pageBuilder: (context, animation, secondaryAnimation) {
          return routes[route]?.call(context) ?? const NotFoundPage();
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: const AlwaysStoppedAnimation(1),
            child: child,
          );
        },
      ),
    );
  }

  static void pop(BuildContext context) {
    return Navigator.pop(context);
  }
}
