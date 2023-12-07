import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/layout/section_layout.dart';

class ContactDescription extends StatelessWidget {
  const ContactDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionLayout(
      verticalPadding: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          P(
            'アプリ開発に関するご相談やお問い合わせは、以下フォームに必要事項を入力の上、お問い合わせください。',
            margin: EdgeInsets.zero,
          ),
          P(
            '2～3営業日以内に、担当よりメールにて返信いたします。',
            margin: EdgeInsets.zero,
          ),
          P(
            '※ *が付いている項目は必須です',
            margin: EdgeInsets.zero,
          )
        ],
      ),
    );
  }
}
