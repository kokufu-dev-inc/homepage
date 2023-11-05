import 'package:flutter/material.dart';
import 'package:flutter_test_app/Headings.dart';
import 'package:go_router/go_router.dart';

int? maxLines = 1;
bool show = false;
var controller = TextEditingController();
var personalnamecontroller = TextEditingController();
var mailcontroller = TextEditingController();
var tellcontroller = TextEditingController();
var companynamecontroller = TextEditingController();
var inquirycontroller = TextEditingController();

class Textfield_Personal extends StatelessWidget {
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
            margin: const EdgeInsets.only(bottom: 10),
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

class TotopModal extends StatelessWidget {
  const TotopModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: show,
      child: Container(
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
                  onPressed: (() {
                    context.push('/Home_Page');
                    show = false;
                    controller.clear();
                    personalnamecontroller.clear();
                    mailcontroller.clear();
                    tellcontroller.clear();
                    companynamecontroller.clear();
                    inquirycontroller.clear();
                  }),
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
      ),
    );
  }
}

textprint() {
  print(personalnamecontroller.text);
  print(mailcontroller.text);
  print(tellcontroller.text);
  print(companynamecontroller.text);
  print(inquirycontroller.text);
  show = true;
}
