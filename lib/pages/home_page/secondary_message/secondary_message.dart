import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/layout/section_layout.dart';
import 'package:flutter_test_app/theme/kokufu_colors.dart';

class SecondaryMessage extends StatelessWidget {
  const SecondaryMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: KokufuColors.backgroundF,
      child: const SectionLayout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            H2(
              'Flutter専門の開発会社',
              fontWeight: FontWeight.bold,
            ),
            P('FlutterはGoogleが提供するアプリ開発フレームワークです。'),
            P('iOS、Androidなどの複数のプラットフォーム向けのアプリを同時に開発することが可能であり、開発にかかる時間的・経済的なコストを大幅に引き下げます。'),
            P('弊社ではFlutterを専門に開発することにより、品質と保守性の高いアプリを開発しています。'),
          ],
        ),
      ),
    );
  }
}
