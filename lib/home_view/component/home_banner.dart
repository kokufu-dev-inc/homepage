import 'package:flutter/material.dart';
import 'package:flutter_test_app/theme.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      // color: Colors.black,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitWidth, image: AssetImage(Images.banner))),
    );
  }
}
