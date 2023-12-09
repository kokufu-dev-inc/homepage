import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/side_drawer/side_drawer_button_item.dart';
import 'package:flutter_test_app/pages/contact_page/contact_page.dart';
import 'package:flutter_test_app/routes.dart';

class SideDrawerContactButton extends StatelessWidget {
  const SideDrawerContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SideDrawerButtonItem(
      onPressed: () {
        Routes.pop(context);
        Routes.push(context, ContactPage.routeName);
      },
      label: 'お問い合わせ',
    );
  }
}
