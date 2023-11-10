import 'package:flutter/material.dart';
import 'package:flutter_test_app/Contact_Page/contact_page.dart';
import 'package:flutter_test_app/Home_Page/Home_Page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = GoRouter(
    // パス (アプリが起動したとき)
    initialLocation: '/Home_Page',
    // パスと画面の組み合わせ
    routes: [
      GoRoute(
        path: '/Home_Page',
        builder: (context, state) => const Home_Page(),
      ),
      GoRoute(
        path: '/Contact_Page',
        builder: (context, state) => const ContactPage(),
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
