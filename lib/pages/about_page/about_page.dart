import 'package:flutter/material.dart';
import 'package:homepage/layout/responsive_layout.dart';
import 'package:homepage/pages/about_page/responsive/about_view_l.dart';
import 'package:homepage/pages/about_page/responsive/about_view_m.dart';
import 'package:homepage/pages/about_page/responsive/about_view_s.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({super.key});

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
