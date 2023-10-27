import 'package:flutter/material.dart';
import 'package:flutter_test_app/Headings.dart';

class Textfield_Contents extends StatelessWidget {
  const Textfield_Contents({
    super.key,
    required this.title,
    required this.labeltext,
    required this.hinttext,
  });

  final String title;
  final String labeltext;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(200, 25, 200, 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                P(text: title),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black54,
                  ),
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 3),
                  child: const P(
                    text: '必須',
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          TextField(
            // コントローラ を このテキストフィールドに結びつける
            // デコレーション
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: labeltext,
              hintText: hinttext,
              errorText: null, // エラーメッセージは今回使わない。ここに書いたり消したりできる。
            ),
          ),
        ],
      ),
    );
  }
}
