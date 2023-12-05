import 'package:flutter/material.dart';
import 'package:flutter_test_app/home_view/home_banner/home_banner_res.dart';
import 'package:flutter_test_app/theme.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: double.infinity,
      // color: Colors.black,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: homeBannerFit(screenWidth),
              image: const AssetImage(Images.banner))),
    );
  }
}
