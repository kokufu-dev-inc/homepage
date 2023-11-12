import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/view/bar_importer.dart';
import 'package:flutter_test_app/component/view/home_importer.dart';
import 'package:flutter_test_app/theme.dart';

class HomeViewWebM extends StatelessWidget {
  const HomeViewWebM({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   color: Colors.orange.shade300,
        //   width: double.infinity,
        //   height: double.infinity,
        //   child: const Center(
        //     child: Text('タブレット'),
        //   ),
        // );
        SingleChildScrollView(
      child: Column(
        children: [
          const HomeTitle(),
          Description(
            responsive: Responsive.M,
          ),
          const HomeBanner(),
          const Featueres(),
          const ToContactPage(),
          const Footer(),
        ],
      ),
    );
  }
}
