import 'package:flutter/material.dart';
import 'package:homepage/component/side_drawer/side_drawer_button_item.dart';
import 'package:homepage/pages/about_page/about_page.dart';
import 'package:homepage/routes.dart';

class SideDrawerAboutButton extends StatelessWidget {
  const SideDrawerAboutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SideDrawerButtonItem(
      onPressed: () {
        Routes.pop(context);
        Routes.push(context, AboutPage.routeName);
      },
      label: '会社概要',
    );
  }
}
