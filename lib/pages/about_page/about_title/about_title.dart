import 'package:flutter/material.dart';
import 'package:homepage/component/html/html_importer.dart';
import 'package:homepage/layout/section_layout.dart';

class AboutTitle extends StatelessWidget {
  const AboutTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SectionLayout(
      child: H3('会社概要', fontWeight: FontWeight.bold),
    );
  }
}
