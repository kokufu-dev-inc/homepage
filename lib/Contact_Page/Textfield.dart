import 'package:flutter/material.dart';
import 'package:flutter_test_app/Contact_Page/Contact_ViewModel.dart';
import 'package:flutter_test_app/Headings.dart';
import 'package:go_router/go_router.dart';

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
        ContactViewModel.maxLines = 1;
        ContactViewModel.controller = ContactViewModel.personalnamecontroller;
        break;

      case '組織名、部署名':
        ContactViewModel.maxLines = 1;
        ContactViewModel.controller = ContactViewModel.companynamecontroller;
        Must = Container();
        break;

      case 'メールアドレス':
        ContactViewModel.maxLines = 1;
        ContactViewModel.controller = ContactViewModel.mailcontroller;
        break;

      case '電話番号':
        ContactViewModel.maxLines = 1;
        ContactViewModel.controller = ContactViewModel.tellcontroller;
        break;

      case 'お問い合わせ内容':
        ContactViewModel.maxLines = null;
        ContactViewModel.controller = ContactViewModel.inquirycontroller;
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
            maxLines: ContactViewModel.maxLines,
            controller: ContactViewModel.controller,
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

class ToTopModal extends StatefulWidget {
  const ToTopModal({super.key});

  @override
  State<ToTopModal> createState() => _ToTopModalState();
}

class _ToTopModalState extends State<ToTopModal> {
  void rebuildModal() {
    setState(() {});
  }

  @override
  void initState() {
    // ViewModel内に、上記で定義した再描画メソッドを渡す
    ContactViewModel.instanceC.textprint(rebuildModal);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: ContactViewModel.show,
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
                    ContactViewModel.show = false;
                    ContactViewModel.controller.clear();
                    ContactViewModel.personalnamecontroller.clear();
                    ContactViewModel.mailcontroller.clear();
                    ContactViewModel.tellcontroller.clear();
                    ContactViewModel.companynamecontroller.clear();
                    ContactViewModel.inquirycontroller.clear();
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
