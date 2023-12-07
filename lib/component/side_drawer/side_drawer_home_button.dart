import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/side_drawer/side_drawer_button_item.dart';
import 'package:flutter_test_app/pages/home_page/home_page.dart';
import 'package:go_router/go_router.dart';

class SideDrawerHomeButton extends StatelessWidget {
  const SideDrawerHomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SideDrawerButtonItem(
      onPressed: () => context.pushReplacement(HomePage.routeName),
      label: 'ホーム',
    );
  }
}
