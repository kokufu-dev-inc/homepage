import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/theme.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class OriginalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OriginalAppBar({Key? key}) : super(key: key);

  static const text = H3(text: 'Kokufu.dev');
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(0),
              shadowColor: Colors.white.withOpacity(0)),
          onPressed: (() {
            context.pop('/Home_Page');
          }),
          child: const H3(
            text: 'Kokufu.dev',
            color: Colors.black,
          )),
      backgroundColor: Colors.white.withOpacity(0.8),
      foregroundColor: Colors.black,
      elevation: 0,
      toolbarHeight: 80,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class Fotter extends StatelessWidget {
  const Fotter({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.courierPrime(fontSize: KokufuFontsize.pS),
      child: Container(
        padding: const EdgeInsets.all(70),
        width: double.infinity,
        color: Colors.black87,
        alignment: Alignment.center,
        child: Column(
          children: [
            const P(
              text: '株式会社国富開発（Kokufu.dev）',
              color: Colors.white,
            ),
            Text(
              '© 2021 STUDIO Inc. All Right Reserved.',
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Home_Banner extends StatelessWidget {
  const Home_Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      // color: Colors.black,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitWidth, image: AssetImage(Images.banner))),
    );
  }
}

class Sidemenu extends StatelessWidget {
  const Sidemenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerHeader(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.all(0),
          child: Container(
            height: 50,
            color: KokufuColors.highlite,
            alignment: Alignment.center,
            child: const Text('Kokufu.dev'),
          ),
        ),
        ListTile(
          title: const P(text: 'ホーム'),
          onTap: () {
            debugPrint('ホーム');
            context.push('/Home_Page');
          },
        ),
        ListTile(
          title: const P(text: 'お問い合わせ'),
          onTap: () {
            debugPrint('お問い合わせ');
            context.push('/Contact_Page');
          },
        ),
      ],
    );
  }
}
