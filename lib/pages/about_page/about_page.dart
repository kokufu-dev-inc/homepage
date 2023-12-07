import 'package:flutter/material.dart';
import 'package:flutter_test_app/layout/responsive_layout.dart';
import 'package:flutter_test_app/pages/about_page/responsive/about_view_l.dart';
import 'package:flutter_test_app/pages/about_page/responsive/about_view_m.dart';
import 'package:flutter_test_app/pages/about_page/responsive/about_view_s.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  static const String routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      s: AboutViewS(),
      m: AboutViewM(),
      l: AboutViewL(),
    );
  }
}
