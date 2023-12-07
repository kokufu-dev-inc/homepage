import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/layout/section_layout.dart';

class OurVision extends StatelessWidget {
  const OurVision({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SectionLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H1('Our Vision', fontWeight: FontWeight.bold),
          H2('みんなが豊かになる開発を', fontWeight: FontWeight.bold),
          P('私たちは、アプリ開発を通して、お客様だけでなくアプリを使用するユーザー様を含めた全ての方が、豊かになること目指しています。'),
        ],
      ),
    );
  }
}
