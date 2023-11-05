import 'package:flutter/material.dart';
import 'package:flutter_test_app/Bar.dart';
import 'package:flutter_test_app/Home_Page/Home_Containers.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: Sidemenu(),
      ),
      appBar: OriginalAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Home_FirstView(),
            Specialist_Company(),
            Home_Banner(),
            Development_Examples(),
            Contact_Form(),
            Fotter(),
          ],
        ),
      ),
    );
  }
}
