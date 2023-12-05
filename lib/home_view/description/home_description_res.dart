import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';

Widget descriptionview(String responsive, double screenWidth) {
  if (responsive == 'S' || responsive == 'M') {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: descriptionheading(screenWidth)),
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              child: const H3(
                text:
                    'FlutterはGoogleが提供するアプリ開発フレームワークです。\n\niOS、Androidなどの複数のプラットフォーム向けのアプリを同時に開発することが可能であり、開発にかかる時間的・経済的なコストを大幅に引き下げます。\n\n弊社ではFlutterを専門に開発することにより、品質と保守性の高いアプリを開発しています。',
              ),
            ),
          ],
        ),
      ],
    );
  } else {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 70),
                child: const H1(
                  text: 'Flutter専門の開発会社',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: const H3(
                  text:
                      'FlutterはGoogleが提供するアプリ開発フレームワークです。\n\niOS、Androidなどの複数のプラットフォーム向けのアプリを同時に開発することが可能であり、開発にかかる時間的・経済的なコストを大幅に引き下げます。\n\n弊社ではFlutterを専門に開発することにより、品質と保守性の高いアプリを開発しています。',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

H1 descriptionheading(double screenWidth) {
  if (screenWidth > 360) {
    return const H1(
      text: 'Flutter専門の開発会社',
    );
  } else {
    return const H1(
      text: 'Flutter専門の\n開発会社',
    );
  }
}
