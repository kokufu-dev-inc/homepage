import 'package:flutter/material.dart';
import 'package:homepage/component/app_bar/kokufu_app_bar.dart';
import 'package:homepage/component/footer.dart';
import 'package:homepage/component/html/main/main.dart';
import 'package:homepage/component/side_drawer/side_drawer_company_button.dart';
import 'package:homepage/component/side_drawer/side_drawer_contact_action_button.dart';
import 'package:homepage/component/side_drawer/side_drawer_home_button.dart';
import 'package:homepage/pages/about_page/about_title/about_title.dart';
import 'package:homepage/pages/about_page/company_information/company_information.dart';
import 'package:homepage/pages/about_page/our_mission/our_mission.dart';
import 'package:homepage/pages/about_page/our_vision/our_vision.dart';

class AboutViewM extends StatelessWidget {
  const AboutViewM({super.key});

  @override
  Widget build(BuildContext context) {
    final contentWidth = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const KokufuAppBar(
        automaticallyImplyLeading: false,
        actions: [
          SideDrawerHomeButton(),
          SideDrawerCompanyButton(),
          SideDrawerContactButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Main(
          child: Column(
            children: [
              SizedBox(
                width: contentWidth,
                child: const AboutTitle(),
              ),
              SizedBox(
                width: contentWidth,
                child: const OurVision(),
              ),
              SizedBox(
                width: contentWidth,
                child: const OurMission(),
              ),
              SizedBox(
                width: contentWidth,
                child: const CompanyInformation(),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
