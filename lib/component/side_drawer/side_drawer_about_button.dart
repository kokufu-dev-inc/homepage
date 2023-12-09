import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/side_drawer/side_drawer_button_item.dart';
import 'package:flutter_test_app/pages/about_page/about_page.dart';
import 'package:flutter_test_app/routes.dart';

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
