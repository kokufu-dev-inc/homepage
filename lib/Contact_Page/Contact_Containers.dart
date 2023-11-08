import 'package:flutter/material.dart';
import 'package:flutter_test_app/Contact_Page/Contact_ViewModel.dart';
import 'package:flutter_test_app/Contact_Page/Textfield.dart';
import 'package:flutter_test_app/Headings.dart';
import 'package:flutter_test_app/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact_Firstview extends StatelessWidget {
  const Contact_Firstview({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.4,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 80),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.blue.shade900.withOpacity(0.1), BlendMode.color),
              fit: BoxFit.fitWidth,
              image: const AssetImage(Images.firstviewBlack))),
      child: DefaultTextStyle(
        style: GoogleFonts.courierPrime(),
        child: Container(
          width: 720,
          height: 290,
          padding: const EdgeInsets.all(20),
          color: Colors.white.withOpacity(0.9),
          child: const Center(
            child: H2(text: 'お問い合わせ'),
          ),
        ),
      ),
    );
  }
}

class Contact_Textfield extends StatelessWidget {
  const Contact_Textfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(70),
      child: const Column(
        children: [
          TextFieldModel(
            title: '指名、担当者名',
            labeltext: '苗字と名前を入力してください',
            hinttext: '苗字 名前',
          ),
          TextFieldModel(
            title: '組織名、部署名',
            labeltext: '所属する組織、部署の情報を入力してください',
            hinttext: 'xxxx・xxxx',
          ),
          TextFieldModel(
            title: 'メールアドレス',
            labeltext: '返信を受け取るメールアドレスを入力してください',
            hinttext: 'kokufu@example.com',
          ),
          TextFieldModel(
            title: '電話番号',
            labeltext: '臨時ご連絡できる電話番号を入力してください',
            hinttext: '000-0000-0000',
          ),
          TextFieldModel(
              title: 'お問い合わせ内容',
              labeltext: '詳細を記入してください',
              hinttext: 'xxxxxxxxxxxxxxxxxxxxxxxxx')
        ],
      ),
    );
  }
}

class Send_Button extends StatelessWidget {
  const Send_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: ElevatedButton(
        onPressed: ContactViewModel.instanceC.rebuild,
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
    );
  }
}
