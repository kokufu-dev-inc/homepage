import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';

class RequireLabel extends StatelessWidget {
  const RequireLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.red.shade400,
      ),
      alignment: Alignment.topCenter,
      child: const P(
        text: '必須',
        color: Colors.white,
      ),
    );
  }
}
