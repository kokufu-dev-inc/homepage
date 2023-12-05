import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:go_router/go_router.dart';

class ToAboutPage extends StatelessWidget {
  const ToAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const H3(text: '会社情報'),
        Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: const H1(text: 'ABOUT')),
        Container(
          width: 380,
          margin: const EdgeInsets.only(bottom: 40),
          child: const P(
            text: '私たちのコンセプトや見据えるビジョン、会社名、所在地、役員、事業内容、資本金など会社の基本情報をまとめてあります。',
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            context.push('/about_view');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            side: const BorderSide(color: Colors.black, width: 1),
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: const P(
              text: '会社情報はこちら',
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
