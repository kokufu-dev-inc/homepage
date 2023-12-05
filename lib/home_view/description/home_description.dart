import 'package:flutter/material.dart';
import 'package:flutter_test_app/home_view/description/home_description_res.dart';
import 'package:flutter_test_app/theme.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.responsive,
  });

  final String responsive;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
        color: KokufuColors.backgroundF,
        width: double.infinity,
        padding: responsivePadding(responsive),
        child: descriptionview(responsive, screenWidth));
  }
}
