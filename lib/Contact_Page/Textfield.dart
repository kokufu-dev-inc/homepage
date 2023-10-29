import 'package:flutter/material.dart';
import 'package:flutter_test_app/Headings.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

int? maxLines = 1;
var controller = useTextEditingController();
final personalnamecontroller = useTextEditingController();
final mailcontroller = useTextEditingController();
final tellcontroller = useTextEditingController();
final companynamecontroller = useTextEditingController();
final inquirycontroller = useTextEditingController();

class Textfield_Personal extends HookWidget {
  const Textfield_Personal(
      {super.key,
      required this.title,
      required this.labeltext,
      required this.hinttext});

  final String title;
  final String labeltext;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    var Must = Container(
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.red.shade400,
      ),
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 3),
      child: const P(
        text: '必須',
        color: Colors.white,
      ),
    );
    switch (title) {
      case '指名、担当者名':
        maxLines = 1;
        controller = personalnamecontroller;
        break;

      case '組織名、部署名':
        maxLines = 1;
        controller = companynamecontroller;
        Must = Container();
        break;

      case 'メールアドレス':
        maxLines = 1;
        controller = mailcontroller;
        break;

      case '電話番号':
        maxLines = 1;
        controller = tellcontroller;
        break;

      case 'お問い合わせ内容':
        maxLines = null;
        controller = inquirycontroller;
        break;

      default:
        print('想定されていないTextField');
        break;
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(200, 25, 200, 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [P(text: title), Must],
            ),
          ),
          TextField(
            maxLines: maxLines,
            controller: controller,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: labeltext,
              hintText: hinttext,
              errorText: null,
            ),
          ),
        ],
      ),
    );
  }
}

textprint() {
  print(personalnamecontroller.text);
  print(mailcontroller.text);
  print(tellcontroller.text);
  print(companynamecontroller.text);
}
