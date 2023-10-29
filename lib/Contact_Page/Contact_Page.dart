import 'package:flutter/material.dart';
import 'package:flutter_test_app/Bar.dart';
import 'package:flutter_test_app/Contact_Page/Contact_Containers.dart';
import 'package:flutter_test_app/Sidemenu.dart';

class Contact_Page extends StatelessWidget {
  const Contact_Page({super.key});

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
            Contact_Firstview(),
            Contact_Textfield(),
            Send_Button(),
            Fotter(),
          ],
        ),
      ),
    );
  }
}
