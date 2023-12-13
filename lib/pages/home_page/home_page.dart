import 'package:flutter/material.dart';
import 'package:homepage/layout/responsive_layout.dart';
import 'package:homepage/pages/home_page/responsive/home_view_l.dart';
import 'package:homepage/pages/home_page/responsive/home_view_m.dart';
import 'package:homepage/pages/home_page/responsive/home_view_s.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      s: HomeViewS(),
      m: HomeViewM(),
      l: HomeViewL(),
    );
  }
}
