import 'package:flutter/material.dart';
import 'package:homepage/component/html/html_importer.dart';
import 'package:homepage/layout/section_layout.dart';

class OurMission extends StatelessWidget {
  const OurMission({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H1('Our Mission', fontWeight: FontWeight.bold),
          H2('安心・安全な開発会社であり続ける', fontWeight: FontWeight.bold),
          P(
            'すべての方が豊かになるためには、アプリの開発から運用までの一連のプロセスで安全と安心を提供することが重要と考えております。',
          ),
          P('そのため「開発工程」「技術」「セキュリティ」の3分野に積極的な投資を行っております。'),
        ],
      ),
    );
  }
}
