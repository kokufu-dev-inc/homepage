import 'package:flutter/material.dart';
import 'package:homepage/component/app_bar/kokufu_app_bar.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  static const String routeName = '/404';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: KokufuAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('404'),
        ],
      ),
    );
  }
}
