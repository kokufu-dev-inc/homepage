import 'package:flutter/material.dart';
import 'package:homepage/layout/responsive_layout.dart';
import 'package:homepage/pages/contact_page/responsive/contact_view_l.dart';
import 'package:homepage/pages/contact_page/responsive/contact_view_m.dart';
import 'package:homepage/pages/contact_page/responsive/contact_view_s.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  static const String routeName = '/contact';

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      s: ContactViewS(),
      m: ContactViewM(),
      l: ContactViewL(),
    );
  }
}
