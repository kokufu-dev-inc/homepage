import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/view/bar_importer.dart';
import 'package:flutter_test_app/component/view/home_importer.dart';
import 'package:flutter_test_app/home_view/home_to_contact_view.dart/home_to_view.dart';

class HomeViewWebM extends StatelessWidget {
  const HomeViewWebM({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HomeTitle(
            responsive: 'M',
          ),
          Description(
            responsive: 'M',
          ),
          HomeBanner(),
          Featueres(
            responsive: 'M',
          ),
          ToContactAbout(
            responsive: 'M',
          ),
          Footer(),
        ],
      ),
    );
  }
}
