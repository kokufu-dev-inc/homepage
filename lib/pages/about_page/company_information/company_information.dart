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
                  _tableCell('会社名'),
                  _tableCell('株式会社国富開発'),
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
                  _tableCell('役員'),
                  _tableCell('代表取締役　田中 正義'),
                ],
              ),
              TableRow(
                children: [
                  _tableCell('従業員数'),
                  _tableCell('3名（パート・アルバイト含む）'),
                ],
              ),
              TableRow(
                children: [
                  _tableCell('事業内容'),
                  _tableCell('スマホアプリ開発'),
                ],
              ),
              TableRow(
                children: [
                  _tableCell('住所'),
                  _tableCell(
                    'Nagoya Office\n〒451-0045\n愛知県名古屋市西区名駅一丁目1-17\nダイヤメイテツビル 11階',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
