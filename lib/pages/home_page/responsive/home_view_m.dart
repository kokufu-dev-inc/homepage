import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/app_bar/kokufu_app_bar.dart';
import 'package:flutter_test_app/component/footer.dart';
import 'package:flutter_test_app/component/html/main/main.dart';
import 'package:flutter_test_app/component/side_drawer/side_drawer_about_button.dart';
import 'package:flutter_test_app/component/side_drawer/side_drawer_contact_action_button.dart';
import 'package:flutter_test_app/component/side_drawer/side_drawer_home_button.dart';
import 'package:flutter_test_app/pages/home_page/contact_navigation.dart/contact_navigation.dart';
import 'package:flutter_test_app/pages/home_page/primary_message/primary_message.dart';
import 'package:flutter_test_app/pages/home_page/process_information/process_information.dart';
import 'package:flutter_test_app/pages/home_page/secondary_message/secondary_message.dart';

class HomeViewM extends StatelessWidget {
  const HomeViewM({super.key});

  @override
  Widget build(BuildContext context) {
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
              const PrimaryMessage(),
              const SecondaryMessage(),
              const ProcessInformation(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Expanded(
                  //   flex: 1,
                  //   child: AboutNavigation(),
                  // ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: const ContactNavigation(),
                  ),
                ],
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
