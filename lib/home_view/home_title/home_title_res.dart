import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';

BoxFit titleBoxFit(double screenWidth) {
  if (screenWidth > 1055) {
    return BoxFit.fitWidth;
  } else {
    return BoxFit.fitHeight;
  }
}

Column titleText(double screenWidth) {
  if (screenWidth < 860) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              FittedBox(
                child: const H1(
                  text: '最高のユーザー体験を\n提供するため\nお客様と共に\n寄り添って創り上げます',
                ),
              ),
            ],
          ),
        ),
        const H3(
          text:
              'スマホアプリを開発する目的を達成することに重きをおき、「本当に喜ばれるアプリとは何か」を常に考えて、お客様と共にプロダクトを創り上げていきます。',
          textAlign: TextAlign.start,
        ),
      ],
    );
  } else if (screenWidth < 400) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: const H1(
            text: '最高のユーザー体験を\n提供するため\nお客様と共に\n寄り添って\n創り上げます',
          ),
        ),
        const H3(
          text:
              'スマホアプリを開発する目的を達成することに重きをおき、\n「本当に喜ばれるアプリとは何か」を常に考えて、\nお客様と共にプロダクトを創り上げていきます。',
          textAlign: TextAlign.start,
        ),
      ],
    );
  } else {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: const H1(
            text: '最高のユーザー体験を提供するため\nお客様と共に寄り添って創り上げます',
          ),
        ),
        const H3(
          text:
              'スマホアプリを開発する目的を達成することに重きをおき、\n「本当に喜ばれるアプリとは何か」を常に考えて、\nお客様と共にプロダクトを創り上げていきます。',
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

Widget titleTextBox(
  double screenWidth,
  String responsive,
) {
  if (screenWidth > 450) {
    return Container(
        padding: const EdgeInsets.all(40),
        color: Colors.white.withOpacity(0.9),
        child: titleText(screenWidth));
  } else {
    return Container(
        padding: const EdgeInsets.all(15),
        color: Colors.white.withOpacity(0.9),
        child: titleText(screenWidth));
  }
}
