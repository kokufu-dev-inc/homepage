import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';

Widget descriptiontext(String responsive) {
  if (responsive == 'M' || responsive == 'S') {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: const H3(text: 'Flutter専門の開発会社'),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: const P(
            text: 'FlutterはGoogleが提供するアプリ開発フレームワークです。',
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 40),
          child: const P(
              text:
                  'iOS、Androidなどの複数のプラットフォーム向けのアプリを同時に開発することが可能であり、開発にかかる時間的・経済的なコストを大葉に引き下げます。\n\n弊社ではFlutterを専門に開発することにより、品質と保守性の高いアプリを開発しています。'),
        ),
      ],
    );
  } else {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 70),
          child: const H1(text: 'Flutter専門の開発会社'),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: const P(
            text: 'FlutterはGoogleが提供するアプリ開発フレームワークです。',
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          child: const P(
              text:
                  'iOS、Androidなどの複数のプラットフォーム向けのアプリを同時に開発することが可能であり、開発にかかる時間的・経済的なコストを大葉に引き下げます。\n\n弊社ではFlutterを専門に開発することにより、品質と保守性の高いアプリを開発しています。'),
        ),
      ],
    );
  }
}

EdgeInsets descriptionpadding(String responsive) {
  if (responsive == 'S') {
    return const EdgeInsets.all(20);
  } else if (responsive == 'M') {
    return const EdgeInsets.all(40);
  } else {
    return const EdgeInsets.all(70);
  }
}
