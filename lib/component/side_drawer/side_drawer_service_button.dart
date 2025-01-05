import 'package:flutter/material.dart';
import 'package:homepage/component/side_drawer/side_drawer_button_item.dart';
import 'package:homepage/pages/home_page/home_page.dart';
import 'package:homepage/routes.dart';

class SideDrawerServiceButton extends StatelessWidget {
  const SideDrawerServiceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SideDrawerButtonItem(
      onPressed: () {
        Routes.pop(context);
        Routes.push(context, HomePage.routeName);
      },
      title: 'SERVICE',
      label: '事業内容',
    );
  }
}
