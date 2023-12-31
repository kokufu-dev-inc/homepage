import 'package:flutter/material.dart';
import 'package:homepage/component/html/html_importer.dart';
import 'package:homepage/component/kokufu_outlined_button.dart';
import 'package:homepage/layout/responsive_layout.dart';
import 'package:homepage/layout/section_layout.dart';
import 'package:homepage/pages/home_page/home_page.dart';
import 'package:homepage/routes.dart';

class ContactDialog extends StatelessWidget {
  const ContactDialog({
    super.key,
    required this.title,
    this.content,
    required this.buttonText,
    this.width,
    required this.onPressed,
  });

  final String title;
  final String? content;
  final String buttonText;
  final double? width;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: width,
        height: MediaQuery.of(context).size.height * 0.4,
        child: SectionLayout(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              H3(
                title,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
              ),
              P(content ?? ''),
              KokufuOutlinedButton(
                onPressed: onPressed,
                child: Text(buttonText),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ContactDialog copyWith({
    String? title,
    String? buttonText,
    String? content,
    double? width,
    void Function()? onPressed,
  }) {
    return ContactDialog(
      title: title ?? this.title,
      buttonText: buttonText ?? this.buttonText,
      content: content ?? this.content,
      width: width ?? this.width,
      onPressed: onPressed ?? this.onPressed,
    );
  }
}

Future<void> showContactCompleteDialog(BuildContext context) async {
  final dialogS = ContactDialog(
    title: '問合せを送信しました。',
    content: '確認後、数日中に返信させていただきます',
    buttonText: 'OK',
    onPressed: () {
      Routes.push(context, HomePage.routeName);
    },
  );
  await showDialog(
    context: context,
    builder: (context) {
      return ResponsiveLayout(
        s: dialogS,
        m: dialogS.copyWith(width: MediaQuery.of(context).size.width * 0.6),
        l: dialogS.copyWith(width: MediaQuery.of(context).size.width * 0.4),
      );
    },
  );
}

Future<void> showContactErrorDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (context) {
      return ContactDialog(
        title: '送信に失敗しました。',
        buttonText: 'OK',
        onPressed: () {
          Routes.pop(context);
        },
      );
    },
  );
}
