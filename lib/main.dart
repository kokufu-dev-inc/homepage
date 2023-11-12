import 'package:flutter/material.dart';
import 'package:flutter_test_app/contact_view/contact_view.dart';
import 'package:flutter_test_app/home_view/home_view.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = GoRouter(
    // パス (アプリが起動したとき)
    initialLocation: '/home_view',
    // パスと画面の組み合わせ
    routes: [
      GoRoute(
        path: '/home_view',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/contact_view',
        builder: (context, state) => const ContactView(),
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
