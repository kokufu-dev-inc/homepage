import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/app_bar/kokufu_app_bar.dart';

class Main extends StatelessWidget {
  const Main({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: KokufuAppBar.size.height),
      child: SelectionArea(child: child),
    );
  }
}
