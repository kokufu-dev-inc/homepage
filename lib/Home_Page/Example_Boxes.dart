import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';

// ignore: camel_case_types
class Example_Boxes extends StatelessWidget {
  const Example_Boxes({super.key, required this.title, required this.contents});

  final String title;
  final String contents;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Color(0xFFE6E5E5),
                spreadRadius: 0,
                blurRadius: 5,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: Column(
            children: [
              Center(child: H3(text: '＜ $title ＞')),
              Text(
                contents,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
