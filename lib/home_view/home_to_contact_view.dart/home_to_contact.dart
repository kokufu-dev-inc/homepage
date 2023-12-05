import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:go_router/go_router.dart';

class ToContactPage extends StatelessWidget {
  const ToContactPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const H3(text: 'お問い合わせ'),
        Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: const H1(text: 'CONTACT')),
        Container(
          width: 380,
          margin: const EdgeInsets.only(bottom: 40),
          child: const P(
            text: 'お問い合わせやご依頼はお気軽に以下のフォームからご連絡ください。一週間以内に返信いたします。',
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            context.push('/contact_view');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            side: const BorderSide(color: Colors.black, width: 1),
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: const P(
              text: 'お問い合わせはこちら',
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
