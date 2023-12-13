import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homepage/component/app_bar/kokufu_app_bar.dart';
import 'package:homepage/component/footer.dart';
import 'package:homepage/component/html/main/main.dart';
import 'package:homepage/component/side_drawer/side_drawer_about_button.dart';
import 'package:homepage/component/side_drawer/side_drawer_contact_action_button.dart';
import 'package:homepage/component/side_drawer/side_drawer_home_button.dart';
import 'package:homepage/pages/contact_page/contact_description/contact_description.dart';
import 'package:homepage/pages/contact_page/contact_title/contact_title.dart';
import 'package:homepage/pages/contact_page/form/contact_form.dart';

class ContactViewL extends ConsumerWidget {
  const ContactViewL({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contentWidth = MediaQuery.of(context).size.width * 0.6;

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
              SizedBox(
                width: contentWidth,
                child: const ContactTitle(),
              ),
              SizedBox(
                width: contentWidth,
                child: const ContactDescription(),
              ),
              SizedBox(
                width: contentWidth,
                child: const ContactForm(),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
