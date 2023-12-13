import 'package:flutter/material.dart';
import 'package:homepage/component/side_drawer/side_drawer_button_item.dart';
import 'package:homepage/pages/contact_page/contact_page.dart';
import 'package:homepage/routes.dart';

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
