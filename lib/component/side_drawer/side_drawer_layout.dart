import 'package:flutter/material.dart';
import 'package:homepage/component/html/html_importer.dart';
import 'package:homepage/component/side_drawer/side_drawer_about_button.dart';
import 'package:homepage/component/side_drawer/side_drawer_contact_action_button.dart';
import 'package:homepage/component/side_drawer/side_drawer_home_button.dart';
import 'package:homepage/theme/kokufu_colors.dart';

class SideDrawerLayout extends StatelessWidget {
  const SideDrawerLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: AppBar().preferredSize.height * 1.45,
          width: double.infinity,
          color: KokufuColors.highlite,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              H3(
                'Kokufu.dev',
                fontWeight: FontWeight.bold,
                margin: EdgeInsets.zero,
              ),
              P('モバイルアプリ開発会社', margin: EdgeInsets.zero),
            ],
          ),
        ),
        const SizedBox(
          width: double.infinity,
          child: SideDrawerHomeButton(),
        ),
        const SizedBox(
          width: double.infinity,
          child: SideDrawerAboutButton(),
        ),
        const SizedBox(
          width: double.infinity,
          child: SideDrawerContactButton(),
        ),
      ],
    );
  }
}
