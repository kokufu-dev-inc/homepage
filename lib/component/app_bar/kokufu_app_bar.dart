import 'package:flutter/material.dart';
import 'package:flutter_test_app/pages/home_page/home_page.dart';
import 'package:flutter_test_app/routes.dart';
import 'package:flutter_test_app/theme/kokufu_font.dart';

class KokufuAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KokufuAppBar({
    Key? key,
    this.centerTitle = false,
    this.actions,
    this.automaticallyImplyLeading = true,
  }) : super(key: key);

  final bool centerTitle;
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;

  static const size = Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextButton(
        onPressed: () {
          Routes.push(context, HomePage.routeName);
        },
        child: const Text(
          'kokufu.dev',
          style: TextStyle(
            fontFamily: KokufuFontfamily.primary,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      centerTitle: centerTitle,
      backgroundColor: Colors.white.withOpacity(0.8),
      foregroundColor: Colors.black,
      elevation: 0,
      toolbarHeight: 80,
      actions: actions,
      automaticallyImplyLeading: automaticallyImplyLeading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
