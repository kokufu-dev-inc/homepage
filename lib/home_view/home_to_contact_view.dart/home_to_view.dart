import 'package:flutter/material.dart';
import 'package:flutter_test_app/home_view/home_to_contact_view.dart/home_to_view_res.dart';
import 'package:flutter_test_app/theme.dart';

class ToContactAbout extends StatelessWidget {
  const ToContactAbout({
    super.key,
    required this.responsive,
  });
  final String responsive;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: responsivePadding(responsive),
      child: hometoviewcontents(screenWidth),
    );
  }
}
