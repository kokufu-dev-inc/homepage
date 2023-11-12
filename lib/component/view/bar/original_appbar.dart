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
            context.pop('/home_view');
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
