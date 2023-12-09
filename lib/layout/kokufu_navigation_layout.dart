import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/h/h1.dart';
import 'package:flutter_test_app/component/html/h/h3.dart';
import 'package:flutter_test_app/component/html/p/p.dart';
import 'package:flutter_test_app/component/kokufu_outlined_button.dart';
import 'package:flutter_test_app/layout/section_layout.dart';

class KokufuNavigationLayout extends StatelessWidget {
  const KokufuNavigationLayout({
    super.key,
    this.width,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.navigationButtonText,
    required this.navigationRouteName,
  });

  final double? width;
  final String title;
  final String subTitle;
  final String description;
  final String navigationButtonText;
  final String navigationRouteName;

  @override
  Widget build(BuildContext context) {
    return SectionLayout(
      width: width,
      child: Column(
        children: [
          H3(subTitle, margin: EdgeInsets.zero),
          H1(
            title,
            fontWeight: FontWeight.bold,
          ),
          P(description, textAlign: TextAlign.center),
          KokufuOutlinedButton(
            onPressed: () {},
            child: Text(
              navigationButtonText,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
