import 'package:flutter/material.dart';
import 'package:homepage/component/html/html_importer.dart';
import 'package:homepage/layout/section_layout.dart';
import 'package:homepage/theme/kokufu_colors.dart';

class SecondaryMessage extends StatelessWidget {
  const SecondaryMessage({
    Key? key,
    this.width = double.infinity,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: KokufuColors.backgroundF,
      child: Column(
        children: [
          SectionLayout(
            width: width,
            child: const Column(
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
        ],
      ),
    );
  }
}
