import 'package:flutter/material.dart';
import 'package:homepage/component/html/html_importer.dart';
import 'package:homepage/layout/section_layout.dart';

class CompanyInformation extends StatelessWidget {
  const CompanyInformation({Key? key}) : super(key: key);

  Widget _tableCell(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 8,
      ),
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SectionLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const H3('会社情報', fontWeight: FontWeight.bold),
          Table(
            defaultColumnWidth: const IntrinsicColumnWidth(),
            columnWidths: const {
              0: FlexColumnWidth(1.2),
              1: FlexColumnWidth(4),
            },
            border: const TableBorder(
              horizontalInside: BorderSide(
                color: Colors.black,
              ),
              bottom: BorderSide(
                color: Colors.black,
              ),
            ),
            children: [
              TableRow(
                children: [
                  _tableCell('社名'),
                  _tableCell('株式会社国富開発'),
                ],
              ),
              TableRow(
                children: [
                  _tableCell('所在地'),
                  _tableCell(
                    'Nagoya Office\n〒451-0045\n愛知県名古屋市西区名駅一丁目1-17\nダイヤメイテツビル 11階\n【交通アクセス】\n・名古屋駅 徒歩4分\n （JR、名鉄名古屋本線、市営地下鉄東山線・桜通線、近鉄名古屋線、名古屋臨海鉄道あおなみ線）',
                  ),
                ],
              ),
              TableRow(
                children: [
                  _tableCell('設立'),
                  _tableCell('2023年11月7日'),
                ],
              ),
              TableRow(
                children: [
                  _tableCell('資本金'),
                  _tableCell('1,000,000円'),
                ],
              ),
              TableRow(
                children: [
                  _tableCell('事業内容'),
                  _tableCell(
                      '01. スマホアプリの開発および販売\n02. ウェブサイトの企画、制作、運営\n03. システム開発\n04. クラウドサービスの提供'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
