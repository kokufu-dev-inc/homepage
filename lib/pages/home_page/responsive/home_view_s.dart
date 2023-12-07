import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/app_bar/kokufu_app_bar.dart';
import 'package:flutter_test_app/component/footer.dart';
import 'package:flutter_test_app/component/html/main/main.dart';
import 'package:flutter_test_app/component/side_drawer/side_drawer_layout.dart';
import 'package:flutter_test_app/pages/home_page/contact_navigation.dart/contact_navigation.dart';
import 'package:flutter_test_app/pages/home_page/primary_message/primary_message.dart';
import 'package:flutter_test_app/pages/home_page/process_information/process_information.dart';
import 'package:flutter_test_app/pages/home_page/secondary_message/secondary_message.dart';

class HomeViewS extends StatelessWidget {
  const HomeViewS({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: Drawer(
        child: SideDrawerLayout(),
      ),
      appBar: KokufuAppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Main(
          child: Column(
            children: [
              PrimaryMessage(),
              SecondaryMessage(),
              ProcessInformation(),
              // AboutNavigation(),
              ContactNavigation(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
