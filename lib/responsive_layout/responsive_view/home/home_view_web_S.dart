import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/view/bar_importer.dart';
import 'package:flutter_test_app/component/view/home_importer.dart';
import 'package:flutter_test_app/home_view/home_to_contact_view.dart/home_to_view.dart';

class HomeViewWebS extends StatelessWidget {
  const HomeViewWebS({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HomeTitle(
            responsive: 'S',
          ),
          Description(
            responsive: 'S',
          ),
          HomeBanner(),
          Featueres(
            responsive: 'S',
          ),
          ToContactAbout(
            responsive: 'S',
          ),
          Footer(),
        ],
      ),
    );
  }
}
