import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/home_view/featueres_box.dart';
import 'package:flutter_test_app/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Featueres extends StatelessWidget {
  const Featueres({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.courierPrime(fontSize: KokufuFontsize.pS),
      child: Container(
        padding: const EdgeInsets.all(70),
        color: Colors.white,
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const H3(text: '実装可能な機能')),
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const H1(text: 'FEATUERES')),
            const P(text: '以下の機能の開発実績がございます。'),
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: const P(text: '記載のない機能につきましてもお気軽に相談ください。'),
            ),
            const Column(
              children: [
                Row(
                  children: [
                    FeatueresBox(
                        title: 'コミュニケーション',
                        contents:
                            '・フォロー\n・コメント\n・マッチング\n・通知\n・レビュー\n・ダイレクトメッセージ'),
                    FeatueresBox(
                        title: '認証',
                        contents: '・パスワード認証\n・SNS認証\n・生体認証\n・メール認証'),
                    FeatueresBox(
                        title: 'ユーザー管理', contents: '・勤怠入力\n・予約システム\n・ポイント機能'),
                  ],
                ),
                Row(
                  children: [
                    FeatueresBox(
                        title: '入出力', contents: '・ファイル出力\n・音声録音\n・カメラ(撮影/QR'),
                    FeatueresBox(
                        title: 'その他',
                        contents: '・音声/動画配信\n・位置情報\n・SDK組み込み\n・他システム連携'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
