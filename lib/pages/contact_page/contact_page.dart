import 'package:flutter/material.dart';
import 'package:flutter_test_app/layout/responsive_layout.dart';
import 'package:flutter_test_app/pages/contact_page/responsive/contact_view_l.dart';
import 'package:flutter_test_app/pages/contact_page/responsive/contact_view_m.dart';
import 'package:flutter_test_app/pages/contact_page/responsive/contact_view_s.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

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
