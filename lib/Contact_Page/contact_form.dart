import 'package:flutter/material.dart';
import 'package:flutter_test_app/Contact_Page/contact_send_button.dart';
import 'package:flutter_test_app/Contact_Page/contact_view_model.dart';
import 'package:flutter_test_app/Contact_Page/contact_form_field.dart';
import 'package:flutter_test_app/Headings.dart';

class ContactForm extends StatefulWidget {
  ContactForm({
    super.key,
    required this.onSubmit,
  });
  final void Function() onSubmit;
  final formkey = GlobalKey<FormState>();

  Widget builder(BuildContext context, _ContactFormState state) {
    final vm = ContactViewModel();
    return Form(
      key: formkey,
      child: Container(
        padding: const EdgeInsets.all(70),
        child: Column(
          children: [
            ContactFormField(
              title: '指名、担当者名',
              labeltext: '苗字と名前を入力してください',
              hinttext: '苗字 名前',
              controller: vm.controllerP,
              require: true,
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return '必須項目です';
                }
              },
            ),
            ContactFormField(
              title: '組織名、部署名',
              labeltext: '所属する組織、部署の情報を入力してください',
              hinttext: 'xxxx・xxxx',
              controller: vm.controllerC,
              validator: null,
            ),
            ContactFormField(
              title: 'メールアドレス',
              labeltext: '返信を受け取るメールアドレスを入力してください',
              hinttext: 'kokufu@example.com',
              controller: vm.controllerM,
              require: true,
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return '必須項目です';
                }
              },
            ),
            ContactFormField(
              title: '電話番号',
              labeltext: '臨時ご連絡できる電話番号を入力してください',
              hinttext: '000-0000-0000',
              controller: vm.controllerT,
              require: true,
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return '必須項目です';
                }
              },
            ),
            ContactFormField(
              title: 'お問い合わせ内容',
              labeltext: '詳細を記入してください',
              hinttext: 'xxxxxxxxxxxxxxxxxxxxxxxxx',
              controller: vm.controllerI,
              maxlines: null,
              require: true,
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return '必須項目です';
                }
              },
            ),
            SendButton(
              onPressed: () {
                //controllerがインスタンス経由だからsetState()でbuild()されたときに新しくなる
                final result = vm.sendaction(formkey);
                if (result) {
                  state.visibiltyErrorText = false;
                  onSubmit.call();
                } else {
                  state.visibiltyErrorText = true;
                }
                state.setState(() {});
              },
            ),
            Visibility(
                visible: state.visibiltyErrorText,
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const P(
                    text: '必須項目が未記入です',
                    color: Colors.red,
                  ),
                )),
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  _ContactFormState();

  bool visibiltyErrorText = false;

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, this);
  }
}
