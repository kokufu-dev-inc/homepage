import 'package:flutter/material.dart';
import 'package:homepage/layout/kokufu_navigation_layout.dart';
import 'package:homepage/pages/contact_page/contact_page.dart';

class ContactNavigation extends StatelessWidget {
  const ContactNavigation({
    Key? key,
    this.width,
  }) : super(key: key);

  final double? width;

  @override
  Widget build(BuildContext context) {
    return KokufuNavigationLayout(
      width: width,
      title: 'CONTACT',
      subTitle: 'お問い合わせ・ご相談',
      description: 'アプリ開発のことならお気軽にご相談ください。御見積のご依頼も可能です。',
      navigationButtonText: '問い合わせする',
      navigationRouteName: ContactPage.routeName,
    );
  }
}
