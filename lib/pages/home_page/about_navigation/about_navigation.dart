import 'package:flutter/material.dart';
import 'package:homepage/layout/kokufu_navigation_layout.dart';
import 'package:homepage/pages/about_page/about_page.dart';

class AboutNavigation extends StatelessWidget {
  const AboutNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const KokufuNavigationLayout(
      title: 'ABOUT',
      subTitle: '会社概要',
      description: '私たちのコンセプトや見据えるビジョン、会社名、所在地、役員、事業内容、資本金など会社の基本情報をまとめてあります。',
      navigationButtonText: '会社概要を見る',
      navigationRouteName: AboutPage.routeName,
    );
  }
}
