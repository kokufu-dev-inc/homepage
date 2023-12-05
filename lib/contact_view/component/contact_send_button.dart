import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';

class SendButton extends StatelessWidget {
  const SendButton({super.key, required this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              side: const BorderSide(color: Colors.black, width: 1),
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: const P(
                text: '送信',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
