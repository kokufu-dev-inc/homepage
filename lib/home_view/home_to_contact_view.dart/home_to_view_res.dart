import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/view/home_importer.dart';

Widget hometoviewcontents(double screenWidth) {
  if (screenWidth > 900) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ToContactPage(),
        ToAboutPage(),
      ],
    );
  } else {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const ToContactPage(),
        Container(
          width: double.infinity,
          height: 1,
          margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
          color: Colors.black,
        ),
        const ToAboutPage(),
      ],
    );
  }
}
