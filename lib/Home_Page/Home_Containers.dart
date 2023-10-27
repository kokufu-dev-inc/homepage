import 'package:flutter/material.dart';
import 'package:flutter_test_app/Home_Page/Example_Boxes.dart';
import 'package:flutter_test_app/Headings.dart';
import 'package:flutter_test_app/theme.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Home_FirstView extends StatelessWidget {
  const Home_FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight - 80,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const Column(
                  children: [
                    H2(
                      text: '最高のユーザー体験を提供するため',
                    ),
                    H2(text: 'お客様と共に寄り添って創り上げます')
                  ],
                ),
              ),
              const P(
                text:
                    'スマホアプリを開発する目的を達成することに重きをおき、「本当に喜ばれるアプリとは何か」を常に考えて、お客様と共にプロダクトを創り上げていきます。',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Specialist_Company extends StatelessWidget {
  const Specialist_Company({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.courierPrime(fontSize: KokufuFontsize.pS),
      child: Container(
        color: KokufuColors.backgroundF,
        width: double.infinity,
        padding: const EdgeInsets.all(70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 70),
                        child: H1(text: 'Flutter専門の開発会社'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: const P(
                          text: 'FlutterはGoogleが提供するアプリ開発フレームワークです。',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 50),
                        child: const P(
                            text:
                                'iOS、Androidなどの複数のプラットフォーム向けのアプリを同時に開発することが可能であり、開発にかかる時間的・経済的なコストを大葉に引き下げます。\n\n弊社ではFlutterを専門に開発することにより、品質と保守性の高いアプリを開発しています。'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                      height: 300,
                      child: Image.asset(
                        Images.flutter,
                        fit: BoxFit.fitHeight,
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Development_Examples extends StatelessWidget {
  const Development_Examples({super.key});

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
                child: H1(text: 'FEATUERES')),
            const P(text: '以下の機能の開発実績がございます。'),
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: const P(text: '記載のない機能につきましてもお気軽に相談ください。'),
            ),
            const Column(
              children: [
                Row(
                  children: [
                    Example_Boxes(
                        title: 'コミュニケーション',
                        contents:
                            '・フォロー\n・コメント\n・マッチング\n・通知\n・レビュー\n・ダイレクトメッセージ'),
                    Example_Boxes(
                        title: '認証',
                        contents: '・パスワード認証\n・SNS認証\n・生体認証\n・メール認証'),
                    Example_Boxes(
                        title: 'ユーザー管理', contents: '・勤怠入力\n・予約システム\n・ポイント機能'),
                  ],
                ),
                Row(
                  children: [
                    Example_Boxes(
                        title: '入出力', contents: '・ファイル出力\n・音声録音\n・カメラ(撮影/QR'),
                    Example_Boxes(
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

// ignore: camel_case_types
class Contact_Form extends StatelessWidget {
  const Contact_Form({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.courierPrime(fontSize: KokufuFontsize.pS),
      child: Container(
        padding: const EdgeInsets.all(70),
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const H3(text: 'お問い合わせ')),
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: H1(text: 'CONTACT')),
            const P(text: 'お問い合わせやご依頼は、お気軽に以下のフォームからご連絡ください。'),
            Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: const P(text: '一週間以内に返信いたします。')),
            ElevatedButton(
              onPressed: () {
                context.push('/Contact_Page');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const P(
                  text: 'お問い合わせはこちら',
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
