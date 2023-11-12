import 'package:flutter/material.dart';
import 'package:flutter_test_app/Sidemenu.dart';
import 'package:flutter_test_app/component/view/bar/original_appbar.dart';
import 'package:flutter_test_app/responsive_layout/responsive_layout.dart';
import 'package:flutter_test_app/responsive_layout/responsive_view/home/home_view_web_L.dart';
import 'package:flutter_test_app/responsive_layout/responsive_view/home/home_view_web_M.dart';
import 'package:flutter_test_app/responsive_layout/responsive_view/home/home_view_web_S.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: Sidemenu(),
      ),
      appBar: OriginalAppBar(),
      body: ResponsiveLayout(
          webS: HomeViewWebS(), webM: HomeViewWebM(), webL: HomeViewWebL()),
    );
  }
}
