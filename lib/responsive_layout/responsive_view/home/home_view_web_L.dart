import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/view/bar_importer.dart';
import 'package:flutter_test_app/component/view/home_importer.dart';
import 'package:flutter_test_app/theme.dart';

class HomeViewWebL extends StatelessWidget {
  const HomeViewWebL({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeTitle(),
          Description(
            responsive: Responsive.L,
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
