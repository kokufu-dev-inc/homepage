import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/app_bar/kokufu_app_bar.dart';
import 'package:flutter_test_app/component/footer.dart';
import 'package:flutter_test_app/component/html/main/main.dart';
import 'package:flutter_test_app/component/side_drawer/side_drawer_layout.dart';
import 'package:flutter_test_app/pages/about_page/about_title/about_title.dart';
import 'package:flutter_test_app/pages/about_page/company_information/company_information.dart';
import 'package:flutter_test_app/pages/about_page/our_mission/our_mission.dart';
import 'package:flutter_test_app/pages/about_page/our_vision/our_vision.dart';

class AboutViewS extends StatelessWidget {
  const AboutViewS({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: KokufuAppBar(),
      endDrawer: Drawer(
        child: SideDrawerLayout(),
      ),
      body: SingleChildScrollView(
        child: Main(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AboutTitle(),
              OurVision(),
              OurMission(),
              CompanyInformation(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
