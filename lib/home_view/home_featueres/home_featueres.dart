import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/home_view/featueres_box.dart';
import 'package:flutter_test_app/theme.dart';

class Featueres extends StatelessWidget {
  const Featueres({
    super.key,
    required this.responsive,
  });
  final String responsive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: responsivePadding(responsive),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: const H1(text: '開発工程へのこだわり')),
          const Column(
            children: [
              FeatueresBox(number: '1.', title: ' 要件定義', contents: '''1. 1. 目標定義
1. 2. 機能要件定義
1. 3. 非機能要件定義'''),
              FeatueresBox(
                  number: '2.', title: ' 設計', contents: '''2. 1. 業務フロー設計
2. 2. 機能設計
2. 3. インフラ設計
2. 4. ネットワーク設計
2. 5. 画面設計
2. 6. 帳票設計
2. 7. DB設計
2. 8. 外部インターフェース設計
2. 9. 運用設計'''),
              FeatueresBox(
                  number: '3.', title: ' 開発', contents: '''3. 1. フロントエンド開発
3. 2. ユーザー様中間確認
3. 3. サーバサイド開発'''),
              FeatueresBox(number: '4.', title: ' 試験', contents: '''4. 1. 仮想端末試験
4. 2. 実機端末試験
4. 3. 脆弱性診断'''),
              FeatueresBox(number: '5.', title: ' 公開', contents: '''5. 1. サーバ公開
5. 2. ストア申請
5. 3. 公開後試験
5. 4. ユーザー様最終確認'''),
              FeatueresBox(
                  number: '6.', title: ' 運用', contents: '''6. 1. 運用マニュアル作成
6. 2. 運用手順引き継ぎ'''),
              FeatueresBox(number: '7.', title: ' 保守', contents: '''7. 1. バックアップ
7. 2. 不具合修正
7. 3. セキュリティ対応
7. 4. OS更新対応
7. 5. 新端末対応
7. 6. 機能追加'''),
            ],
          )
        ],
      ),
    );
  }
}
