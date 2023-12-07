import 'package:flutter/material.dart';
import 'package:flutter_test_app/layout/responsive_layout.dart';
import 'package:flutter_test_app/pages/home_page/responsive/home_view_l.dart';
import 'package:flutter_test_app/pages/home_page/responsive/home_view_m.dart';
import 'package:flutter_test_app/pages/home_page/responsive/home_view_s.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      s: HomeViewS(),
      m: HomeViewM(),
      l: HomeViewL(),
    );
  }
}
