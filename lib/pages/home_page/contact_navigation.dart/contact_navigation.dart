import 'package:flutter/material.dart';
import 'package:flutter_test_app/layout/kokufu_navigation_layout.dart';
import 'package:flutter_test_app/pages/contact_page/contact_page.dart';

class ContactNavigation extends StatelessWidget {
  const ContactNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const KokufuNavigationLayout(
      title: 'CONTACT',
      subTitle: 'お問い合わせ・ご相談',
      description: 'アプリ開発のことならお気軽にご相談ください。御見積のご依頼も可能です。',
      navigationButtonText: '問い合わせする',
      navigationRouteName: ContactView.routeName,
    );
  }
}
