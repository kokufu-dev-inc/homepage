import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/theme.dart';
import 'package:go_router/go_router.dart';

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
            context.push('/home_view');
          },
        ),
        ListTile(
          title: const P(text: 'お問い合わせ'),
          onTap: () {
            debugPrint('お問い合わせ');
            context.push('/contact_view');
          },
        ),
      ],
    );
  }
}
