import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test_app/pages/about_page/about_page.dart';
import 'package:flutter_test_app/pages/contact_page/contact_page.dart';
import 'package:flutter_test_app/pages/home_page/home_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = GoRouter(
    // パス (アプリが起動したとき)
    initialLocation: HomePage.routeName,
    // パスと画面の組み合わせ
    routes: [
      GoRoute(
        path: HomePage.routeName,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: ContactView.routeName,
        builder: (context, state) => const ContactView(),
      ),
      GoRoute(
        path: AboutPage.routeName,
        builder: (context, state) => const AboutPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
