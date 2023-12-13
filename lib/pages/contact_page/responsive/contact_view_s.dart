import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homepage/component/app_bar/kokufu_app_bar.dart';
import 'package:homepage/component/footer.dart';
import 'package:homepage/component/html/main/main.dart';
import 'package:homepage/component/side_drawer/side_drawer_layout.dart';
import 'package:homepage/pages/contact_page/contact_description/contact_description.dart';
import 'package:homepage/pages/contact_page/contact_title/contact_title.dart';
import 'package:homepage/pages/contact_page/form/contact_form.dart';

class ContactViewS extends ConsumerWidget {
  const ContactViewS({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: Drawer(
        child: SideDrawerLayout(),
      ),
      appBar: KokufuAppBar(),
      body: SingleChildScrollView(
        child: Main(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContactTitle(),
              ContactDescription(),
              ContactForm(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
