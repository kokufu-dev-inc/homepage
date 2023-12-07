import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/layout/section_layout.dart';
import 'package:flutter_test_app/pages/home_page/process_information/process_information_card.dart';

class ProcessInformation extends StatelessWidget {
  const ProcessInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H2(
            '開発工程へのこだわり',
            fontWeight: FontWeight.bold,
          ),
          ProcessInformationCard(
            leading: Icon(Icons.checklist_sharp),
            title: '1. 要件定義',
            description:
                'ユーザーの課題や得られる体験などを細かく定義します。これにより開発範囲が明確になりプロジェクトの成功率が上がります。',
          ),
          ProcessInformationCard(
            leading: Icon(Icons.developer_board_sharp),
            title: '2. 設計',
            description: 'アプリの画面配置を決定してモックを作成します。ユーザー体験を確認することで、開発前の最終確認が可能です。',
          ),
          ProcessInformationCard(
            leading: Icon(Icons.code_sharp),
            title: '3. 開発',
            description:
                '要件定義および設計で決めた内容に従って開発を行います。社内エンジニアが担当するので、安定した品質を提供することができます。',
          ),
          ProcessInformationCard(
            leading: Icon(Icons.flaky_sharp),
            title: '4. 試験',
            description: '仮想端末による試験でアプリの品質を高めます。実機端末試験も有料にて対応致します。',
          ),
          ProcessInformationCard(
            leading: Icon(Icons.public_sharp),
            title: '5. 公開',
            description: '公開に向けての最終確認をします。移行案件の場合は移行計画を作成してから実施します。',
          ),
          ProcessInformationCard(
            leading: Icon(Icons.computer_sharp),
            title: '6. 運用',
            description: '公開後の運用マニュアルを提供します。自社での運用が難しい場合には弊社による運用代行を利用いただけます。',
          ),
          ProcessInformationCard(
            leading: Icon(Icons.settings_suggest_sharp),
            title: '7. 保守',
            description: '不具合修正や新機能の追加、新機種への対応、脆弱性対応など、継続的な支援を行います。',
          ),
        ],
      ),
    );
  }
}
