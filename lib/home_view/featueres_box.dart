import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';

// ignore: camel_case_types
class FeatueresBox extends StatelessWidget {
  const FeatueresBox({
    super.key,
    required this.title,
    required this.contents,
    required this.number,
  });

  final String title;
  final String contents;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 50, 20),
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              H1(text: number),
              H2(text: title),
            ],
          ),
          Container(
            color: Colors.black,
            height: 1,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 15),
          ),
          H3(
            text: contents,
          ),
        ],
      ),
    );
  }
}
