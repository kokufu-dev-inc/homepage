import 'package:flutter/material.dart';
import 'package:homepage/component/app_bar/kokufu_app_bar.dart';
import 'package:homepage/component/footer.dart';
import 'package:homepage/component/html/main/main.dart';
import 'package:homepage/component/side_drawer/side_drawer_about_button.dart';
import 'package:homepage/component/side_drawer/side_drawer_contact_action_button.dart';
import 'package:homepage/component/side_drawer/side_drawer_home_button.dart';
import 'package:homepage/pages/home_page/contact_navigation.dart/contact_navigation.dart';
import 'package:homepage/pages/home_page/primary_message/primary_message.dart';
import 'package:homepage/pages/home_page/process_information/process_information.dart';
import 'package:homepage/pages/home_page/secondary_message/secondary_message.dart';

class HomeViewM extends StatelessWidget {
  const HomeViewM({super.key});

  @override
  Widget build(BuildContext context) {
    final contentWidth = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const KokufuAppBar(
        automaticallyImplyLeading: false,
        actions: [
          SideDrawerHomeButton(),
          SideDrawerAboutButton(),
          SideDrawerContactButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Main(
          child: Column(
            children: [
              PrimaryMessage(
                width: contentWidth,
              ),
              SecondaryMessage(
                width: contentWidth,
              ),
              ProcessInformation(
                width: contentWidth,
              ),
              ContactNavigation(
                width: contentWidth,
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
