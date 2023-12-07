import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/side_drawer/side_drawer_button_item.dart';
import 'package:flutter_test_app/pages/about_page/about_page.dart';
import 'package:go_router/go_router.dart';

class SideDrawerAboutButton extends StatelessWidget {
  const SideDrawerAboutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SideDrawerButtonItem(
      onPressed: () => context.push(AboutPage.routeName),
      label: '会社概要',
    );
  }
}
