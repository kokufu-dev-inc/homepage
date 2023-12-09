import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test_app/pages/home_page/home_page.dart';
import 'package:flutter_test_app/routes.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
// import 'package:go_router/go_router.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.routeName,
        routes: Routes.routes,
      ),
    ),
  );
}
