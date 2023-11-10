import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:go_router/go_router.dart';

class ContactCompleteModal extends StatelessWidget {
  const ContactCompleteModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white.withOpacity(0.7),
      height: double.infinity,
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(30),
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: Colors.black, style: BorderStyle.solid, width: 1)),
        child: Column(
          children: [
            const H3(text: 'お問い合わせありがとうございます'),
            const P(text: '確認後、数日中に返信させていただきます'),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                onPressed: () async {
                  await context.push('/Home_Page');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black, width: 1)),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const P(
                    text: 'トップ画面に戻る',
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
