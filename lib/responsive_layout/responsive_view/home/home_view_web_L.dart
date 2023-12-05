import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/view/bar_importer.dart';
import 'package:flutter_test_app/component/view/home_importer.dart';
import 'package:flutter_test_app/home_view/home_to_contact_view.dart/home_to_view.dart';

class HomeViewWebL extends StatelessWidget {
  const HomeViewWebL({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HomeTitle(
            responsive: 'L',
          ),
          Description(
            responsive: 'L',
          ),
          HomeBanner(),
          Featueres(
            responsive: 'L',
          ),
          ToContactAbout(
            responsive: 'L',
          ),
          Footer(),
        ],
      ),
    );
  }
}
