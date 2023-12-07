import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/layout/section_layout.dart';

class ContactTitle extends StatelessWidget {
  const ContactTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionLayout(
      child: H2(
        'お問い合わせ',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
