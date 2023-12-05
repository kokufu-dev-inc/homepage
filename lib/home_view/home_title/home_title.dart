import 'package:flutter/material.dart';
import 'package:flutter_test_app/home_view/home_title/home_title_res.dart';
import 'package:flutter_test_app/theme.dart';

// ignore: camel_case_types
class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
    required this.responsive,
  });

  final String responsive;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight - 80,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 80),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.blue.shade900.withOpacity(0.1), BlendMode.color),
              fit: titleBoxFit(screenWidth),
              image: const AssetImage(Images.firstviewBlack))),
      child: titleTextBox(screenWidth, responsive),
    );
  }
}
